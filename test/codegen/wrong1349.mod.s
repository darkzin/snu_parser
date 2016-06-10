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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 97 of <array 37 of <array 76 of <array 65 of <array 91 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v3       <bool> %ebp-17 ]

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
    movl    $41336, %eax            #   0:     if     41336 # 20287 goto 4_if_true
    movl    $20287, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
l_f0_4_if_true:
    movl    $100, %eax              #   3:     assign v2 <- 100
    movb    %al, -16(%ebp)         
    movl    $1, %eax                #   4:     return 1
    jmp     l_f0_exit              
    movl    $51163, %eax            #   5:     if     51163 = 9178 goto 10
    movl    $9178, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #   6:     goto   11
l_f0_10:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_12                 #   9:     goto   12
l_f0_11:
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f0_12:
    movzbl  -13(%ebp), %eax         #  13:     return t0
    jmp     l_f0_exit              
    jmp     l_f0_16_if_false        #  14:     goto   16_if_false
    jmp     l_f0_14                 #  15:     goto   14
l_f0_16_if_false:
l_f0_14:
    movl    $65611, %eax            #  18:     assign v1 <- 65611
    movl    %eax, 12(%ebp)         
    movl    $100, %eax              #  19:     if     100 > 100 goto 19
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_19                
    jmp     l_f0_20                 #  20:     goto   20
l_f0_19:
    movl    $1, %eax                #  22:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_21                 #  23:     goto   21
l_f0_20:
    movl    $0, %eax                #  25:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f0_21:
    movzbl  -14(%ebp), %eax         #  27:     assign v3 <- t1
    movb    %al, -17(%ebp)         
    movl    $26124, %eax            #  28:     if     26124 <= 69459 goto 24_if_true
    movl    $69459, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  29:     goto   25_if_false
l_f0_24_if_true:
    jmp     l_f0_23                 #  31:     goto   23
l_f0_25_if_false:
l_f0_23:
    movl    $99050, %eax            #  34:     assign v1 <- 99050
    movl    %eax, 12(%ebp)         
    movl    $36974, %eax            #  35:     assign v1 <- 36974
    movl    %eax, 12(%ebp)         
    jmp     l_f0_3                  #  36:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_0                  #  39:     goto   0
l_f0_0:
    movl    $99, %eax               #  41:     assign v2 <- 99
    movb    %al, -16(%ebp)         
    jmp     l_f0_32                 #  42:     goto   32
    jmp     l_f0_32                 #  43:     goto   32
    jmp     l_f0_32                 #  44:     goto   32
    movl    $1, %eax                #  45:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_33                 #  46:     goto   33
l_f0_32:
    movl    $0, %eax                #  48:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_f0_33:
    movzbl  -15(%ebp), %eax         #  50:     return t2
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 62 of <array 72 of <array 36 of <array 44 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
l_f1_7_while_cond:
    jmp     l_f1_6                  #   3:     goto   6
    jmp     l_f1_7_while_cond       #   4:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_4_while_cond       #   6:     goto   4_while_cond
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    movl    $85705, %eax            #  11:     mul    t0 <- 85705, 75319
    movl    $75319, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $21323, %eax            #  12:     sub    t1 <- 21323, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $16068, %eax            #  13:     if     16068 >= t1 goto 11_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  16:     goto   10_while_cond
l_f1_9:
l_f1_14_while_cond:
    movl    $98, %eax               #  19:     if     98 <= 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_15_while_body     
    jmp     l_f1_13                 #  20:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  22:     goto   14_while_cond
l_f1_13:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t7       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t1
    movb    %al, 16(%ebp)          
    jmp     l_f2_10                 #  11:     goto   10
    jmp     l_f2_10                 #  12:     goto   10
    jmp     l_f2_10                 #  13:     goto   10
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_f2_12:
    jmp     l_f2_17                 #  21:     goto   17
    jmp     l_f2_17                 #  22:     goto   17
    jmp     l_f2_17                 #  23:     goto   17
    jmp     l_f2_17                 #  24:     goto   17
    movl    $1, %eax                #  25:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_18                 #  26:     goto   18
l_f2_17:
    movl    $0, %eax                #  28:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_f2_18:
    movzbl  -15(%ebp), %eax         #  30:     if     t2 # t3 goto 6
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_6                 
    jmp     l_f2_7                  #  31:     goto   7
l_f2_6:
    movl    $1, %eax                #  33:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_8                  #  34:     goto   8
l_f2_7:
    movl    $0, %eax                #  36:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f2_8:
    movzbl  -17(%ebp), %eax         #  38:     assign v2 <- t4
    movb    %al, 16(%ebp)          
l_f2_24_while_cond:
    jmp     l_f2_23                 #  40:     goto   23
l_f2_27_while_cond:
    movl    $97, %eax               #  42:     if     97 > 98 goto 28_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_28_while_body     
    jmp     l_f2_26                 #  43:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  45:     goto   27_while_cond
l_f2_26:
    movl    $0, %eax                #  47:     return 0
    jmp     l_f2_exit              
    movl    $1, %eax                #  48:     return 1
    jmp     l_f2_exit              
    movl    $97, %eax               #  49:     if     97 = 97 goto 33
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_33                
    jmp     l_f2_34                 #  50:     goto   34
l_f2_33:
    movl    $1, %eax                #  52:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_35                 #  53:     goto   35
l_f2_34:
    movl    $0, %eax                #  55:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f2_35:
    movzbl  -18(%ebp), %eax         #  57:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_39_if_false        #  58:     goto   39_if_false
    jmp     l_f2_37                 #  59:     goto   37
l_f2_39_if_false:
l_f2_37:
    call    dummyCHARfunc           #  62:     call   t6 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $46493, %eax            #  63:     if     46493 >= 81526 goto 42
    movl    $81526, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_42                
    jmp     l_f2_43                 #  64:     goto   43
l_f2_42:
    movl    $1, %eax                #  66:     assign t7 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f2_44                 #  67:     goto   44
l_f2_43:
    movl    $0, %eax                #  69:     assign t7 <- 0
    movb    %al, -20(%ebp)         
l_f2_44:
    movzbl  -20(%ebp), %eax         #  71:     return t7
    jmp     l_f2_exit              
    movl    $0, %eax                #  72:     return 0
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  73:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_24_while_cond      #  74:     goto   24_while_cond
l_f2_23:

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $8480, %eax             #   0:     assign v0 <- 8480
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
