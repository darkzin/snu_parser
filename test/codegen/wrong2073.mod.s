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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $v0       <char> %ebp-27 ]

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
l_f0_1_while_cond:
    movl    $67451, %eax            #   1:     sub    t3 <- 67451, 48048
    movl    $48048, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t4 <- t3, 15646
    movl    $15646, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t5 <- t4, 57529
    movl    $57529, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $7454, %eax             #   4:     if     7454 >= t5 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   9:     call   t6 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  11:     assign v0 <- t7
    movb    %al, -27(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 95 of <array 63 of <array 18 of <array 86 of <char>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <bool> %ebp-25 ]

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
l_f1_1_while_cond:
    movl    $52407, %eax            #   1:     assign v2 <- 52407
    movl    %eax, -24(%ebp)        
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
    leal    _str_1, %eax            #   3:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
    movl    $97, %eax               #  10:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f1_exit              
    movl    $12455, %eax            #  12:     assign v2 <- 12455
    movl    %eax, -24(%ebp)        
    movl    $91819, %eax            #  13:     if     91819 # 68756 goto 15
    movl    $68756, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_15                
    jmp     l_f1_16                 #  14:     goto   16
l_f1_15:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_17                 #  17:     goto   17
l_f1_16:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_17:
    movzbl  -17(%ebp), %eax         #  21:     assign v3 <- t4
    movb    %al, -25(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_9                  #  23:     goto   9
l_f1_9:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 70 of <array 62 of <array 47 of <array 62 of <array 86 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $80835, %eax            #   0:     sub    t3 <- 80835, 79821
    movl    $79821, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 15865
    movl    $15865, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v4 <- t4
    movl    %eax, -32(%ebp)        
l_f2_2_while_cond:
    movl    $1, %eax                #   4:     if     1 = 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
    movl    $9911, %eax             #   7:     if     9911 = 9043 goto 6_if_true
    movl    $9043, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   8:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $98, %eax               #  13:     if     98 = 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  14:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  16:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_2_while_cond       #  19:     goto   2_while_cond
l_f2_1:
    call    dummyINTfunc            #  21:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $95610, %eax            #  22:     sub    t6 <- 95610, t5
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
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
l_test_1_while_cond:
    movl    $85700, %eax            #   1:     div    t0 <- 85700, 25252
    movl    $25252, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 > 3829 goto 2_while_body
    movl    $3829, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyINTfunc            #   5:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
    jmp     l_test_exit            
    movl    $1, %eax                #  11:     if     1 = 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  12:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  14:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_5                #  17:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $97, %eax               #  20:     if     97 >= 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  21:     goto   19_if_false
l_test_18_if_true:
    movl    $99, %eax               #  23:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_17               #  24:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $0, %eax                #  27:     if     0 = 0 goto 23
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23              
    jmp     l_test_24               #  28:     goto   24
l_test_23:
    movl    $1, %eax                #  30:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_25               #  31:     goto   25
l_test_24:
    movl    $0, %eax                #  33:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_25:
    movzbl  -21(%ebp), %eax         #  35:     assign v1 <- t2
    movb    %al, v1                

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
