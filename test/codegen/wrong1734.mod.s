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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 89 of <array 5 of <array 71 of <array 98 of <bool>>>>>>> %ebp+12 ]

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
    movl    $52041, %eax            #   1:     assign v1 <- 52041
    movl    %eax, 8(%ebp)          
    movl    $93900, %eax            #   2:     mul    t3 <- 93900, 37742
    movl    $37742, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     assign v1 <- t3
    movl    %eax, 8(%ebp)          

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]

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
    jmp     l_f1_0                  #   1:     goto   0
    call    ReadInt                 #   2:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $77988, %eax            #   3:     if     77988 >= 51223 goto 6_if_true
    movl    $51223, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $79805, %eax            #   9:     if     79805 = 76502 goto 10_if_true
    movl    $76502, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  10:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_1_while_cond       #  15:     goto   1_while_cond
l_f1_0:
    call    dummyINTfunc            #  17:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 11 of <array 29 of <array 8 of <array 47 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -16(%ebp)   1  [ $v4       <char> %ebp-16 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $98, %eax               #   4:     assign v4 <- 98
    movb    %al, -16(%ebp)         
    jmp     l_f2_5                  #   5:     goto   5
l_f2_5:
    movl    $97, %eax               #   7:     if     97 >= 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   8:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $25633, %eax            #  13:     if     25633 <= 48095 goto 13_if_true
    movl    $48095, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  14:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  16:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_1_while_cond       #  19:     goto   1_while_cond
l_f2_0:
l_f2_17_while_cond:
    call    dummyBOOLfunc           #  22:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  23:     if     t3 = 1 goto 18_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_18_while_body     
    jmp     l_f2_16                 #  24:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  26:     goto   17_while_cond
l_f2_16:
l_f2_20_while_cond:
    jmp     l_f2_24                 #  29:     goto   24
    movl    $1, %eax                #  30:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_25                 #  31:     goto   25
l_f2_24:
    movl    $0, %eax                #  33:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_25:
    jmp     l_f2_28                 #  35:     goto   28
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_29                 #  37:     goto   29
l_f2_28:
    movl    $0, %eax                #  39:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_29:
    movzbl  -14(%ebp), %eax         #  41:     if     t4 = t5 goto 21_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_21_while_body     
    jmp     l_f2_19                 #  42:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  44:     goto   20_while_cond
l_f2_19:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    movl    $66771, %eax            #   0:     add    t0 <- 66771, 62895
    movl    $62895, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   3:     if     100 > 97 goto 3
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_3               
    jmp     l_test_4                #   4:     goto   4
l_test_3:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_5                #   7:     goto   5
l_test_4:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_5:
    movzbl  -18(%ebp), %eax         #  11:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
l_test_13_while_cond:
    movl    $100, %eax              #  14:     if     100 >= 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  15:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  17:     goto   13_while_cond
l_test_12:
l_test_17_while_cond:
    movl    $99, %eax               #  20:     if     99 < 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_18_while_body   
    jmp     l_test_16               #  21:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  23:     goto   17_while_cond
l_test_16:
    jmp     l_test_8                #  25:     goto   8
l_test_10_if_false:
l_test_8:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
