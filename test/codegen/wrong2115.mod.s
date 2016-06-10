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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $32295, %eax            #   0:     if     32295 >= 62376 goto 1_if_true
    movl    $62376, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $80683, %eax            #   4:     assign v2 <- 80683
    movl    %eax, 12(%ebp)         
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    dummyCHARfunc           #  13:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     assign v1 <- t5
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    movl    $0, %eax                #   0:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    movl    $1, %eax                #   1:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_8                  #   2:     goto   8
    movl    $0, %eax                #   3:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_8:
    movzbl  -13(%ebp), %eax         #   5:     if     t4 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   9:     goto   4
l_f1_3:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  13:     assign v1 <- t5
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #  14:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  15:     return t6
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_4                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_4:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t5
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $99, %eax               #  11:     if     99 > 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  12:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  14:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_13_while_cond:
    movl    $9991, %eax             #  18:     if     9991 # 5122 goto 14_while_body
    movl    $5122, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_14_while_body     
    jmp     l_f2_12                 #  19:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  21:     goto   13_while_cond
l_f2_12:
    movl    $0, %eax                #  23:     return 0
    jmp     l_f2_exit              
    movl    $1, %eax                #  24:     return 1
    jmp     l_f2_exit              
    movl    $1, %eax                #  25:     return 1
    jmp     l_f2_exit              
    movl    $0, %eax                #  26:     if     0 # 0 goto 20
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_20                
    jmp     l_f2_21                 #  27:     goto   21
l_f2_20:
    movl    $1, %eax                #  29:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_22                 #  30:     goto   22
l_f2_21:
    movl    $0, %eax                #  32:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f2_22:
    movzbl  -15(%ebp), %eax         #  34:     return t6
    jmp     l_f2_exit              
l_f2_25_while_cond:
    jmp     l_f2_24                 #  36:     goto   24
    jmp     l_f2_25_while_cond      #  37:     goto   25_while_cond
l_f2_24:
    movl    $1, %eax                #  39:     if     1 = 1 goto 28
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_28                
    jmp     l_f2_29                 #  40:     goto   29
l_f2_28:
    movl    $1, %eax                #  42:     assign t7 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_30                 #  43:     goto   30
l_f2_29:
    movl    $0, %eax                #  45:     assign t7 <- 0
    movb    %al, -16(%ebp)         
l_f2_30:
    movzbl  -16(%ebp), %eax         #  47:     assign v1 <- t7
    movb    %al, -17(%ebp)         
l_f2_33_while_cond:
    jmp     l_f2_33_while_cond      #  49:     goto   33_while_cond
    jmp     l_f2_6_while_cond       #  50:     goto   6_while_cond
l_f2_39_while_cond:
    movl    $0, %eax                #  52:     if     0 # 0 goto 40_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_40_while_body     
    jmp     l_f2_38                 #  53:     goto   38
l_f2_40_while_body:
    jmp     l_f2_39_while_cond      #  55:     goto   39_while_cond
l_f2_38:
    movl    $80559, %eax            #  57:     if     80559 >= 52323 goto 43_if_true
    movl    $52323, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_43_if_true        
    jmp     l_f2_44_if_false        #  58:     goto   44_if_false
l_f2_43_if_true:
    jmp     l_f2_42                 #  60:     goto   42
l_f2_44_if_false:
l_f2_42:
    jmp     l_f2_35                 #  63:     goto   35
l_f2_35:

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_1                #   1:     goto   1
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_1                #   3:     goto   1
    jmp     l_test_2                #   4:     goto   2
l_test_1:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
l_test_12_while_cond:
    movl    $100, %eax              #  13:     if     100 > 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
    movl    $69752, %eax            #  18:     param  0 <- 69752
    pushl   %eax                   
    call    WriteInt                #  19:     call   WriteInt
    addl    $4, %esp               
    movl    $99, %eax               #  20:     assign v1 <- 99
    movb    %al, v1                
    movl    $73636, %eax            #  21:     add    t1 <- 73636, 77512
    movl    $77512, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     sub    t2 <- t1, 48432
    movl    $48432, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t3 <- t2, 33988
    movl    $33988, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     assign v2 <- t3
    movl    %eax, v2               

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

    # scope: test
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
