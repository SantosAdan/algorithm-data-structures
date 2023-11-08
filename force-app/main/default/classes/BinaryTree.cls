public class BinaryTree {
    private Node root;

    public BinaryTree() {
        this.root = null;
    }

    public BinaryTree(Object key) {
        this.root = new Node(key);
    }

    
    private class Node {
        Object key;
        Node left;
        Node right;

        public Node(Object key) {
            this.key = key;
            this.left = null;
            this.right = null;
        }
    }
}