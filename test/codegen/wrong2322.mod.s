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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_8_if_false         #   6:     goto   8_if_false
    movl    $100, %eax              #   7:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
l_f0_11_while_cond:
    movl    $77702, %eax            #  10:     add    t2 <- 77702, 71388
    movl    $71388, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     sub    t3 <- t2, 56498
    movl    $56498, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $67314, %eax            #  12:     if     67314 < t3 goto 12_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_12_while_body     
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_6                  #  17:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 49 of <array 26 of <array 86 of <array 19 of <array 83 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 90 of <array 83 of <array 91 of <array 100 of <array 6 of <bool>>>>>>> %ebp+20 ]
    #    -20(%ebp)   1  [ $v4       <bool> %ebp-20 ]

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
l_f1_1_while_cond:
    movl    $69888, %eax            #   1:     if     69888 # 58383 goto 2_while_body
    movl    $58383, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $0, %eax                #   4:     return 0
    jmp     l_f1_exit              
    call    dummyINTfunc            #   5:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_12                 #   9:     goto   12
    jmp     l_f1_13                 #  10:     goto   13
l_f1_12:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_14                 #  13:     goto   14
l_f1_13:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_14:
    movl    $1, %eax                #  17:     if     1 # t4 goto 8
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_8                 
    jmp     l_f1_9                  #  18:     goto   9
l_f1_8:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_10                 #  21:     goto   10
l_f1_9:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -19(%ebp)         
l_f1_10:
    movzbl  -19(%ebp), %eax         #  25:     assign v4 <- t5
    movb    %al, -20(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $4643, %eax             #   4:     return 4643
    jmp     l_f2_exit              
    movl    $99, %eax               #   5:     if     99 # 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    movl    $17520, %eax            #  13:     sub    t2 <- 17520, 45720
    movl    $45720, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     assign v0 <- t2
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  15:     assign v1 <- 100
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    jmp     l_test_3                #   0:     goto   3
l_test_3:
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   3:     goto   7_while_cond
    jmp     l_test_exit            
    jmp     l_test_0                #   5:     goto   0
l_test_0:
l_test_11_while_cond:
    jmp     l_test_10               #   8:     goto   10
    call    dummyCHARfunc           #   9:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  13:     goto   15_while_cond
    call    dummyCHARfunc           #  14:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_18               #  15:     goto   18
l_test_18:
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
l_test_10:
    movl    $67755, %eax            #  19:     assign v0 <- 67755
    movl    %eax, v0               
    movl    $98, %eax               #  20:     if     98 # 98 goto 23_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_23_if_true      
    jmp     l_test_24_if_false      #  21:     goto   24_if_false
l_test_23_if_true:
    movl    $57603, %eax            #  23:     assign v0 <- 57603
    movl    %eax, v0               
    jmp     l_test_22               #  24:     goto   22
l_test_24_if_false:
l_test_22:

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

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
