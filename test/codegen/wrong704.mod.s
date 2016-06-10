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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $99, %eax               #   2:     if     99 < 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   6:     goto   5
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
    movl    $100, %eax              #   9:     return 100
    jmp     l_f0_exit              
    call    WriteLn                 #  10:     call   WriteLn
    movl    $99, %eax               #  11:     if     99 <= 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_11                
    jmp     l_f0_12                 #  12:     goto   12
l_f0_11:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_13                 #  15:     goto   13
l_f0_12:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_13:
    movzbl  -14(%ebp), %eax         #  19:     assign v3 <- t3
    movb    %al, -15(%ebp)         
    jmp     l_f0_2_while_cond       #  20:     goto   2_while_cond
l_f0_1:
    movl    $98, %eax               #  22:     return 98
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $89370, %eax            #   0:     sub    t2 <- 89370, 15318
    movl    $15318, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t3 <- t2, 49092
    movl    $49092, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t4 <- t3, 82283
    movl    $82283, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t4
    jmp     l_f1_exit              
    call    ReadInt                 #   4:     call   t5 <- ReadInt
    movl    %eax, -28(%ebp)        
    call    dummyINTfunc            #   5:     call   t6 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $48063, %eax            #   6:     add    t7 <- 48063, t6
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t7       <bool> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $v3       <bool> %ebp-30 ]

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
    movl    $2032, %eax             #   0:     add    t2 <- 2032, 34912
    movl    $34912, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t3 <- t2, 12607
    movl    $12607, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t3
    movl    %eax, -28(%ebp)        
    movl    $100, %eax              #   3:     assign v2 <- 100
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     param  1 <- t4
    pushl   %eax                   
    movl    $100, %eax              #   6:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   8:     param  1 <- t5
    pushl   %eax                   
    movl    $99, %eax               #   9:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  10:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  11:     if     t6 >= 99 goto 3
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #  12:     goto   4
l_f2_3:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f2_5                  #  15:     goto   5
l_f2_4:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -24(%ebp)         
l_f2_5:
    movzbl  -24(%ebp), %eax         #  19:     assign v3 <- t7
    movb    %al, -30(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    movl    $32169, %eax            #   0:     if     32169 <= 94738 goto 1
    movl    $94738, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
l_test_6_while_cond:
    jmp     l_test_8                #  10:     goto   8
    jmp     l_test_7_while_body     #  11:     goto   7_while_body
l_test_8:
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  14:     goto   6_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    ReadInt                 #  17:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1884, %eax             #  18:     if     1884 > 882 goto 17_if_true
    movl    $882, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_17_if_true      
    jmp     l_test_18_if_false      #  19:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  21:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $37184, %eax            #  24:     assign v1 <- 37184
    movl    %eax, v1               
    jmp     l_test_13               #  25:     goto   13
l_test_13:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
