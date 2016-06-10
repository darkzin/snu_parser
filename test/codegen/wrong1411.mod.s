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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 51 of <array 53 of <array 19 of <array 40 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_f0_2_while_cond:
l_f0_5_while_cond:
    call    dummyBOOLfunc           #   3:     call   t8 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   4:     if     t8 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_2_while_cond       #   9:     goto   2_while_cond
l_f0_8_while_cond:
    movl    $34046, %eax            #  11:     mul    t9 <- 34046, 25486
    movl    $25486, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     mul    t10 <- t9, 71655
    movl    $71655, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t11 <- t10, 46717
    movl    $46717, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     sub    t12 <- t11, 34748
    movl    $34748, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t12 # 91872 goto 9_while_body
    movl    $91872, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_9_while_body      
    jmp     l_f0_7                  #  16:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  18:     goto   8_while_cond
l_f0_7:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 3 of <array 76 of <array 41 of <array 42 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     assign v2 <- t7
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #   3:     if     98 = t8 goto 2_if_true
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_6_while_cond:
    movl    $14837, %eax            #  10:     add    t9 <- 14837, 14385
    movl    $14385, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $43242, %eax            #  11:     sub    t10 <- 43242, 97377
    movl    $97377, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -24(%ebp), %eax         #  12:     if     t9 > t10 goto 7_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #  13:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  15:     goto   6_while_cond
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v1       <char> %ebp-19 ]

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
l_f2_1_while_cond:
    movl    $6955, %eax             #   1:     div    t7 <- 6955, 919
    movl    $919, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t7 = 75151 goto 2_while_body
    movl    $75151, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $63190, %eax            #   5:     if     63190 > 9471 goto 5
    movl    $9471, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   9:     goto   7
l_f2_6:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #  13:     assign v0 <- t8
    movb    %al, -18(%ebp)         
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #  16:     assign v1 <- 99
    movb    %al, -19(%ebp)         
    call    dummyProcedure          #  17:     call   dummyProcedure

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 34 of <array 3 of <array 76 of <array 41 of <array 42 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    call    ReadInt                 #   3:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $74845, %eax            #   4:     if     74845 > 25293 goto 6
    movl    $25293, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_8:
    movzbl  -21(%ebp), %eax         #  12:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_2_while_cond     #  13:     goto   2_while_cond
l_test_1:
l_test_11_while_cond:
    movl    $97, %eax               #  16:     param  2 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  17:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     param  1 <- t3
    pushl   %eax                   
    movl    $74793, %eax            #  19:     mul    t4 <- 74793, 71255
    movl    $71255, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t5 <- t4, 47714
    movl    $47714, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  22:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
    movl    $98, %eax               #  23:     if     98 = t6 goto 12_while_body
    movzbl  -37(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  24:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  26:     goto   11_while_cond
l_test_10:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 34 of <array 3 of <array 76 of <array 41 of <array 42 of <int>>>>>>
    .long    5
    .long   34
    .long    3
    .long   76
    .long   41
    .long   42
    .skip 53395776








    # end of global data section
    #-----------------------------------------

    .end
##################################################
