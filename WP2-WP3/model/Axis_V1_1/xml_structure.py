import xml.etree.ElementTree as ET

def print_specific_level(element, target_tag, file, printed_tags):
    # Find the target element
    for child in element:
        if child.tag == target_tag:
            # Print direct children of the target element
            for subchild in child:
                if subchild.tag not in printed_tags:
                    file.write(f"<{subchild.tag}>\n")
                    printed_tags.add(subchild.tag)
            break
        # Recursively search for the target element
        print_specific_level(child, target_tag, file, printed_tags)

def main():
    tree = ET.parse('AxisCatalogs_V1_1_20200205.xml')
    root = tree.getroot()
    
    target_tag = "{http://www.interlis.ch/INTERLIS2.3}AxisCatalogs_V1_1.AxisCatalogs"
    printed_tags = set()
    
    with open('output.txt', 'w') as file:
        print_specific_level(root, target_tag, file, printed_tags)

if __name__ == "__main__":
    main()