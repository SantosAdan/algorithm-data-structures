@IsTest
private class BinarySearchTreeTest {
    @IsTest
    private static void constructor_withoutParams_expectRootEqualsNull() {
        Test.startTest();
        BinarySearchTree bst = new BinarySearchTree();
        Test.stopTest();
    
        Assert.isNull(bst.root, 'Root should be null');
    }

    @IsTest
    private static void constructor_withParam_expectRootEqualParam() {
        Test.startTest();
        BinarySearchTree bst = new BinarySearchTree(35);
        Test.stopTest();
    
        Assert.isNotNull(bst.root, 'Root should not be null');
        Assert.areEqual(35, bst.root.value, 'Root value should be 35');
        Assert.isNull(bst.root.left, 'Root left node should be null');
        Assert.isNull(bst.root.right, 'Root right node should not be null');
    }

    @IsTest
    private static void add_expectNewLeftNodeCreated() {
        BinarySearchTree bst = new BinarySearchTree(35);

        Test.startTest();
        bst.add(20);
        bst.add(36);
        Test.stopTest();
    
        Assert.areEqual(20, bst.root.left.value, 'Root left node value should be 20');
        Assert.areEqual(36, bst.root.right.value, 'Root left node value should be 36');
    }
}