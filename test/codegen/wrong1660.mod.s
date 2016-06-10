##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 28 of <array 2 of <array 40 of <array 4 of <array 56 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   2:     goto   3_while_body
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     return t2
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 28 of <array 2 of <array 40 of <array 4 of <array 56 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 45 of <array 4 of <array 2 of <array 83 of <int>>>>>>> %ebp+12 ]
    #   -501804(%ebp)  501784  [ $v2       <array 28 of <array 2 of <array 40 of <array 4 of <array 56 of <bool>>>>>> %ebp-501804 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $501792, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $125448, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-501804(%ebp)        # local array 'v2': 5 dimensions
    movl    $28,-501800(%ebp)       #   dimension 1: 28 elements
    movl    $2,-501796(%ebp)        #   dimension 2: 2 elements
    movl    $40,-501792(%ebp)       #   dimension 3: 40 elements
    movl    $4,-501788(%ebp)        #   dimension 4: 4 elements
    movl    $56,-501784(%ebp)       #   dimension 5: 56 elements

    # function body
l_f1_4_while_cond:
    jmp     l_f1_4_while_cond       #   1:     goto   4_while_cond
l_f1_7_while_cond:
    movl    $97, %eax               #   3:     if     97 >= 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #   4:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_0                  #   8:     goto   0
l_f1_0:
    movl    $99, %eax               #  10:     param  1 <- 99
    pushl   %eax                   
    leal    -501804(%ebp), %eax     #  11:     &()    t1 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  13:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
l_f1_12_while_cond:
    jmp     l_f1_11                 #  15:     goto   11
    call    dummyBOOLfunc           #  16:     call   t3 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f1_12_while_cond      #  17:     goto   12_while_cond
l_f1_11:

l_f1_exit:
    # epilogue
    addl    $501792, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 28 of <array 2 of <array 40 of <array 4 of <array 56 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 68 of <array 52 of <array 43 of <array 25 of <array 15 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -501812(%ebp)  501784  [ $v2       <array 28 of <array 2 of <array 40 of <array 4 of <array 56 of <bool>>>>>> %ebp-501812 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $501800, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $125450, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-501812(%ebp)        # local array 'v2': 5 dimensions
    movl    $28,-501808(%ebp)       #   dimension 1: 28 elements
    movl    $2,-501804(%ebp)        #   dimension 2: 2 elements
    movl    $40,-501800(%ebp)       #   dimension 3: 40 elements
    movl    $4,-501796(%ebp)        #   dimension 4: 4 elements
    movl    $56,-501792(%ebp)       #   dimension 5: 56 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #   4:     param  1 <- 99
    pushl   %eax                   
    leal    -501812(%ebp), %eax     #   5:     &()    t1 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   7:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     return t2
    jmp     l_f2_exit              
    movl    $14313, %eax            #   9:     mul    t3 <- 14313, 43387
    movl    $43387, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     mul    t4 <- t3, 4167
    movl    $4167, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     assign v1 <- t4
    movl    %eax, 12(%ebp)         

l_f2_exit:
    # epilogue
    addl    $501800, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
    jmp     l_test_exit            
    movl    $90104, %eax            #   4:     if     90104 # 41173 goto 7_if_true
    movl    $41173, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #   5:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   7:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $675, %eax              #  12:     if     675 # 76966 goto 13_if_true
    movl    $76966, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  13:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_0                #  18:     goto   0
l_test_2_if_false:
l_test_0:
    call    ReadInt                 #  21:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################
