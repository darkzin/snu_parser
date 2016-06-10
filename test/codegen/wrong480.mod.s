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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <char> %ebp-26 ]
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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   1:     if     97 > 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
    call    dummyBOOLfunc           #   8:     call   t6 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    ReadInt                 #   9:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #  10:     assign v0 <- 99
    movb    %al, -27(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t8 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $98, %eax               #  12:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  13:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  14:     call   t9 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_f0_1                  #  15:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $100, %eax              #  18:     assign v0 <- 100
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -30(%ebp)   1  [ $v2       <bool> %ebp-30 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   2:     if     99 > t5 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $1, %eax                #   5:     assign v2 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $98079, %eax            #   8:     mul    t6 <- 98079, 73197
    movl    $73197, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $18121, %eax            #   9:     add    t7 <- 18121, 53604
    movl    $53604, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     sub    t8 <- t7, 56018
    movl    $56018, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  11:     if     t6 > t8 goto 6
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_6                 
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $1, %eax                #  14:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $0, %eax                #  17:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f1_8:
    movzbl  -29(%ebp), %eax         #  19:     return t9
    jmp     l_f1_exit              
    movl    $88945, %eax            #  20:     if     88945 <= 99727 goto 11_if_true
    movl    $99727, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  21:     goto   12_if_false
l_f1_11_if_true:
    movl    $99, %eax               #  23:     if     99 > 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_15                
    jmp     l_f1_16                 #  24:     goto   16
l_f1_15:
    movl    $1, %eax                #  26:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_17                 #  27:     goto   17
l_f1_16:
    movl    $0, %eax                #  29:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_17:
    movzbl  -13(%ebp), %eax         #  31:     assign v2 <- t10
    movb    %al, -30(%ebp)         
    movl    $1, %eax                #  32:     assign v2 <- 1
    movb    %al, -30(%ebp)         
    movl    $49499, %eax            #  33:     assign v1 <- 49499
    movl    %eax, 12(%ebp)         
    jmp     l_f1_10                 #  34:     goto   10
l_f1_12_if_false:
l_f1_10:

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     return 99
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    movl    $25433, %eax            #   0:     add    t0 <- 25433, 34603
    movl    $34603, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 60176
    movl    $60176, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 8009
    movl    $8009, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 45071
    movl    $45071, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    call    f2                      #   5:     call   t4 <- f2
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   6:     assign v1 <- t4
    movb    %al, v1                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
