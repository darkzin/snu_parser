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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 13 of <array 42 of <array 2 of <array 66 of <array 71 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 86 of <array 30 of <array 29 of <array 65 of <array 77 of <bool>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    jmp     l_f0_4                  #   1:     goto   4
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movl    $0, %eax                #   9:     if     0 # t4 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_while_body:
    call    ReadInt                 #  12:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $77071, %eax            #  13:     if     77071 > 20581 goto 12_if_true
    movl    $20581, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  16:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_15                 #  19:     goto   15
l_f0_15:
    jmp     l_f0_1_while_cond       #  21:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  23:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]

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
    movl    $81633, %eax            #   0:     mul    t4 <- 81633, 50419
    movl    $50419, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 70317
    movl    $70317, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 62807
    movl    $62807, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t7 <- t6, 34422
    movl    $34422, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v3 <- t7
    movl    %eax, 12(%ebp)         
    jmp     l_f1_3_if_false         #   5:     goto   3_if_false
l_f1_5_while_cond:
    jmp     l_f1_4                  #   7:     goto   4
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    movl    $100, %eax              #  10:     assign v2 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 73 of <array 36 of <array 28 of <array 24 of <array 37 of <bool>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    movl    $326, %eax              #   0:     assign v3 <- 326
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_3_while_cond:
    movl    $100, %eax              #   3:     if     100 <= 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    call    ReadInt                 #   6:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     assign v3 <- t5
    movl    %eax, -24(%ebp)        
    jmp     l_f2_3_while_cond       #   8:     goto   3_while_cond
l_f2_2:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $89956, %eax            #   2:     add    t1 <- 89956, 14778
    movl    $14778, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t1
    movl    %eax, v1               
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
    movl    $50769, %eax            #   5:     assign v1 <- 50769
    movl    %eax, v1               
    jmp     l_test_exit            
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:
l_test_8_while_cond:
    jmp     l_test_7                #  11:     goto   7
    jmp     l_test_8_while_cond     #  12:     goto   8_while_cond
l_test_7:
    movl    $97, %eax               #  14:     if     97 >= 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    movl    $9239, %eax             #  17:     if     9239 <= 74122 goto 17_if_true
    movl    $74122, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  18:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  20:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $0, %eax                #  23:     if     0 = 1 goto 21_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  24:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  26:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $10521, %eax            #  29:     assign v1 <- 10521
    movl    %eax, v1               
    call    dummyBOOLfunc           #  30:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_12               #  31:     goto   12
l_test_14_if_false:
l_test_12:
l_test_27_while_cond:
    jmp     l_test_26               #  35:     goto   26
l_test_30_while_cond:
    jmp     l_test_34               #  37:     goto   34
    movl    $1, %eax                #  38:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_35               #  39:     goto   35
l_test_34:
    movl    $0, %eax                #  41:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_35:
    movl    $0, %eax                #  43:     if     0 = t3 goto 31_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_31_while_body   
    jmp     l_test_29               #  44:     goto   29
l_test_31_while_body:
    jmp     l_test_30_while_cond    #  46:     goto   30_while_cond
l_test_29:
    jmp     l_test_27_while_cond    #  48:     goto   27_while_cond
l_test_26:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
