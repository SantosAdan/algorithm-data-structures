/**
 * @description Binary Search Tree implementation using recursion
 * @author Adan Santos
 * @since 2023-11-08
 */
public class BinarySearchTree {
    private Node root;

    /**
     * @description Empty constructor
     */
    public BinarySearchTree() {
        this.root = null;
    }

    /**
     * @description Constructor with initial value
     * @param key `Integer` value to be added to the tree
     */
    public BinarySearchTree(Integer key) {
        this.root = new Node(key);
    }

    /**
     * @description Adds a new node to the tree
     * @param key `Integer` value to be added to the tree
     */
    public void add(Integer key) {
        this.root = add(this.root, key);
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

        if (searchTerm == node.key) {
            return true;
        }

        if (searchTerm < node.key) {
            return search(node.left, searchTerm);
        }

        return search(node.right, searchTerm);
    }

    /**
     * @description Adds a new node to the tree
     * @param node `Node` previous node
     * @param key `Integer` value to be added to the tree
     * @return  `Node` new node
     */
    private Node add(Node node, Integer key) {
        if (node == null) {
            return new Node(key);
        }

        if (key <= node.key) {
            node.left = add(node.left, key);
        } else {
            node.right = add(node.right, key);
        }

        return node;
    }
    
    private class Node {
        Integer key;
        Node left;
        Node right;

        public Node(Integer key) {
            this.key = key;
            this.left = null;
            this.right = null;
        }
    }
}