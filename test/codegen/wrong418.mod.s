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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 6 of <array 6 of <array 6 of <array 4 of <char>>>>>>> %ebp+8 ]

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
    movl    $46068, %eax            #   0:     if     46068 # 81991 goto 1_if_true
    movl    $81991, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_6_while_cond:
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t4 <= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #  10:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  12:     goto   6_while_cond
l_f0_5:
l_f0_10_while_cond:
    jmp     l_f0_9                  #  15:     goto   9
    call    WriteLn                 #  16:     call   WriteLn
    jmp     l_f0_10_while_cond      #  17:     goto   10_while_cond
l_f0_9:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 9 of <array 9 of <array 3 of <array 8 of <array 7 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    WriteLn                 #   1:     call   WriteLn
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #   5:     if     97 # 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    jmp     l_f1_12                 #  12:     goto   12
l_f1_12:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_14                 #  15:     goto   14
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_14:
    movl    $0, %eax                #  18:     if     0 = t3 goto 10_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_10_while_body     
    jmp     l_f1_8                  #  19:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  21:     goto   9_while_cond
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 5 of <array 9 of <array 6 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 10 of <array 5 of <array 6 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 4 of <array 5 of <array 3 of <array 5 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 2 of <array 6 of <array 2 of <array 4 of <array 4 of <bool>>>>>>> %ebp+20 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $91661, %eax            #   2:     if     91661 > 6944 goto 3_while_body
    movl    $6944, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   5:     goto   2_while_cond
l_f2_1:
    movl    $90178, %eax            #   7:     if     90178 > 55492 goto 6_if_true
    movl    $55492, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   8:     goto   7_if_false
l_f2_6_if_true:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
    movl    $100, %eax              #  12:     return 100
    jmp     l_f2_exit              
    movl    $99, %eax               #  13:     return 99
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  14:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #  15:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_5                  #  16:     goto   5
l_f2_7_if_false:
l_f2_5:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    jmp     l_test_1                #   0:     goto   1
l_test_1:
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   3:     goto   3
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                
    movl    $97, %eax               #   7:     if     97 <= 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7_if_true       
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
l_test_7_if_true:
    call    ReadInt                 #  10:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  12:     goto   12_while_cond
    jmp     l_test_6                #  13:     goto   6
l_test_8_if_false:
l_test_6:
l_test_15_while_cond:
    jmp     l_test_14               #  17:     goto   14
l_test_18_while_cond:
    movl    $97, %eax               #  19:     if     97 >= 97 goto 19_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_19_while_body   
    jmp     l_test_17               #  20:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  22:     goto   18_while_cond
l_test_17:
    movl    $61909, %eax            #  24:     if     61909 <= 81336 goto 22_if_true
    movl    $81336, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_22_if_true      
    jmp     l_test_23_if_false      #  25:     goto   23_if_false
l_test_22_if_true:
    movl    $97, %eax               #  27:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_21               #  28:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_15_while_cond    #  31:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    call    WriteLn                 #  34:     call   WriteLn
l_test_29_while_cond:
    jmp     l_test_32               #  36:     goto   32
    jmp     l_test_33               #  37:     goto   33
l_test_32:
    movl    $1, %eax                #  39:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_34               #  40:     goto   34
l_test_33:
    movl    $0, %eax                #  42:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_34:
    movzbl  -21(%ebp), %eax         #  44:     if     t2 # 1 goto 30_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_30_while_body   
    jmp     l_test_28               #  45:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  47:     goto   29_while_cond
l_test_28:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
