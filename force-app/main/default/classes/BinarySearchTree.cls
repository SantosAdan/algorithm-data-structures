/**
 * @description Binary Search Tree implementation using recursion
 * @author Adan Santos
 * @since 2023-11-08
 */
public class BinarySearchTree {
    @TestVisible
    private Node root;

    /**
     * @description Empty constructor
     */
    public BinarySearchTree() {
        this.root = null;
    }

    /**
     * @description Constructor with initial value
     * @param value `Integer` value to be added to the tree
     */
    public BinarySearchTree(Integer value) {
        this.root = new Node(value);
    }

    /**
     * @description Adds a new node to the tree
     * @param value `Integer` value to be added to the tree
     */
    public void add(Integer value) {
        this.root = add(this.root, value);
    }

    /**
     * @description Searches for a value in the tree
     * @param data `Integer` value to be searched in the tree
     * @return  `Boolean` true if the value is found, false otherwise
     */
    public Boolean search(Integer data) {
        return search(this.root, data);
    }

    /**
     * @description Searches for a value in the tree
     * @param node `Node` previous node
     * @param searchTerm `Integer` value to be searched in the tree
     * @return  `Boolean` true if the value is found, false otherwise
     */
    private Boolean search(Node node, Integer searchTerm) {
        if (node == null) {
            return false;
        }

        if (searchTerm == node.value) {
            return true;
        }

        if (searchTerm < node.value) {
            return search(node.left, searchTerm);
        }

        return search(node.right, searchTerm);
    }

    /**
     * @description Adds a new node to the tree
     * @param node `Node` previous node
     * @param value `Integer` value to be added to the tree
     * @return  `Node` new node
     */
    private Node add(Node node, Integer value) {
        if (node == null) {
            return new Node(value);
        }

        if (value <= node.value) {
            node.left = add(node.left, value);
        } else {
            node.right = add(node.right, value);
        }

        return node;
    }
    
    private class Node {
        public Integer value;
        public Node left;
        public Node right;

        public Node(Integer value) {
            this.value = value;
            this.left = null;
            this.right = null;
        }
    }
}