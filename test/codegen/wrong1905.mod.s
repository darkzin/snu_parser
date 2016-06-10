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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 62 of <array 52 of <array 38 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 39 of <array 30 of <array 40 of <array 28 of <array 26 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $74188, %eax            #   2:     if     74188 > 49815 goto 3_if_true
    movl    $49815, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_exit              
    movl    $72763, %eax            #   6:     if     72763 # 22824 goto 8_if_true
    movl    $22824, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   7:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   9:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $41775, %eax            #   0:     if     41775 < 29201 goto 1_if_true
    movl    $29201, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    ReadInt                 #   3:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_6_while_cond:
    movl    $9227, %eax             #   5:     if     9227 > 22070 goto 7_while_body
    movl    $22070, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    movl    $0, %eax                #  10:     assign v1 <- 0
    movb    %al, 12(%ebp)          
l_f1_11_while_cond:
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
l_f1_14_while_cond:
    jmp     l_f1_13                 #  16:     goto   13
    jmp     l_f1_14_while_cond      #  17:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_0                  #  19:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_17_while_cond:
    jmp     l_f1_16                 #  23:     goto   16
    jmp     l_f1_17_while_cond      #  24:     goto   17_while_cond
l_f1_16:
    call    ReadInt                 #  26:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f1_27_while_cond:
    movl    $100, %eax              #  28:     if     100 # 97 goto 28_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_28_while_body     
    jmp     l_f1_26                 #  29:     goto   26
l_f1_28_while_body:
    jmp     l_f1_27_while_cond      #  31:     goto   27_while_cond
l_f1_26:
    jmp     l_f1_21                 #  33:     goto   21
l_f1_21:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 69 of <array 30 of <array 70 of <array 77 of <array 76 of <char>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
l_f2_4_while_cond:
    jmp     l_f2_4_while_cond       #   1:     goto   4_while_cond
    call    WriteLn                 #   2:     call   WriteLn
    jmp     l_f2_0                  #   3:     goto   0
l_f2_0:
    movl    $88611, %eax            #   5:     add    t4 <- 88611, 54788
    movl    $54788, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     assign v1 <- t4
    movl    %eax, -20(%ebp)        
    movl    $37121, %eax            #   7:     assign v1 <- 37121
    movl    %eax, -20(%ebp)        

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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $61998, %eax            #   1:     sub    t1 <- 61998, 54582
    movl    $54582, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $14380, %eax            #   2:     if     14380 # t1 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_4:
    movzbl  -21(%ebp), %eax         #  10:     param  1 <- t2
    pushl   %eax                   
    movl    $100, %eax              #  11:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #  12:     call   f1
    addl    $8, %esp               
l_test_7_while_cond:
    movl    $65557, %eax            #  14:     param  0 <- 65557
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  17:     goto   11_while_cond
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_14_while_cond:
    jmp     l_test_13               #  20:     goto   13
    jmp     l_test_exit            
    movl    $5013, %eax             #  22:     if     5013 # 90420 goto 18_if_true
    movl    $90420, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  23:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  25:     goto   17
l_test_19_if_false:
l_test_17:
    call    dummyINTfunc            #  28:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_test_23_while_cond:
    jmp     l_test_22               #  30:     goto   22
    jmp     l_test_23_while_cond    #  31:     goto   23_while_cond
l_test_22:
    jmp     l_test_14_while_cond    #  33:     goto   14_while_cond
l_test_13:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
