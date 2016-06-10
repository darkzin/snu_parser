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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
    movl    $1, %eax                #   0:     assign v2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    call    dummyBOOLfunc           #   2:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   3:     assign v2 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     assign v3 <- t5
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    movl    $1, %eax                #   0:     assign v1 <- 1
    movb    %al, 8(%ebp)           
l_f1_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t4 > 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    movl    $74928, %eax            #   8:     add    t5 <- 74928, 68430
    movl    $68430, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t6 <- t5, 2680
    movl    $2680, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     sub    t7 <- t6, 9179
    movl    $9179, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t8 <- t7, 68527
    movl    $68527, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     return t8
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 38 of <array 98 of <array 64 of <array 25 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    call    dummyINTfunc            #   5:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_6_while_cond:
    movl    $100, %eax              #   7:     if     100 # 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  10:     goto   6_while_cond
l_f2_5:
    movl    $96927, %eax            #  12:     return 96927
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_12_if_false        #  15:     goto   12_if_false
    movl    $0, %eax                #  16:     if     0 # 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  17:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  19:     goto   13
l_f2_15_if_false:
l_f2_13:
    movl    $1, %eax                #  22:     if     1 = 0 goto 18_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  23:     goto   19_if_false
l_f2_18_if_true:
l_f2_22_while_cond:
    jmp     l_f2_21                 #  26:     goto   21
    jmp     l_f2_22_while_cond      #  27:     goto   22_while_cond
l_f2_21:
    jmp     l_f2_17                 #  29:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_10                 #  32:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_25_while_cond:
    movl    $27694, %eax            #  36:     if     27694 <= 65933 goto 26_while_body
    movl    $65933, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_26_while_body     
    jmp     l_f2_24                 #  37:     goto   24
l_f2_26_while_body:
    jmp     l_f2_25_while_cond      #  39:     goto   25_while_cond
l_f2_24:

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]

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
    jmp     l_test_0                #   1:     goto   0
    movl    $100, %eax              #   2:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_6                #   4:     goto   6
    jmp     l_test_6                #   5:     goto   6
    jmp     l_test_6                #   6:     goto   6
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   8:     goto   7
l_test_6:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_14               #  16:     goto   14
    jmp     l_test_14               #  17:     goto   14
    jmp     l_test_14               #  18:     goto   14
    jmp     l_test_14               #  19:     goto   14
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_15               #  21:     goto   15
l_test_14:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_15:
    movzbl  -14(%ebp), %eax         #  25:     assign v0 <- t1
    movb    %al, v0                
    movl    $74743, %eax            #  26:     add    t2 <- 74743, 45
    movl    $45, %ebx              
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $37006, %eax            #  27:     if     37006 <= t2 goto 20
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_20              
    jmp     l_test_21               #  28:     goto   21
l_test_20:
    movl    $1, %eax                #  30:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_22               #  31:     goto   22
l_test_21:
    movl    $0, %eax                #  33:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_22:
    movzbl  -21(%ebp), %eax         #  35:     assign v0 <- t3
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
