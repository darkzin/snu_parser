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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 45042
    movl    $45042, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t5
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   4:     if     100 # t6 goto 2
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2                 
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_4                  #   8:     goto   4
l_f0_3:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f0_4:
    movzbl  -22(%ebp), %eax         #  12:     assign v2 <- t7
    movb    %al, -33(%ebp)         
    call    ReadInt                 #  13:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f1_4_while_cond:
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
    call    dummyBOOLfunc           #   3:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   4:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f1_9_while_cond:
    jmp     l_f1_8                  #   6:     goto   8
    jmp     l_f1_9_while_cond       #   7:     goto   9_while_cond
l_f1_8:
    movl    $99, %eax               #   9:     if     99 < 98 goto 12
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_12                
    jmp     l_f1_13                 #  10:     goto   13
l_f1_12:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_14                 #  13:     goto   14
l_f1_13:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_14:
    movzbl  -21(%ebp), %eax         #  17:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    jmp     l_f1_18_if_false        #  18:     goto   18_if_false
    jmp     l_f1_16                 #  19:     goto   16
l_f1_18_if_false:
l_f1_16:
    movl    $99, %eax               #  22:     if     99 # 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  23:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  25:     goto   19
l_f1_21_if_false:
l_f1_19:
    movl    $94255, %eax            #  28:     return 94255
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  29:     goto   1_while_cond
    leal    _str_1, %eax            #  30:     &()    t7 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  32:     call   WriteStr
    addl    $4, %esp               
    movl    $47128, %eax            #  33:     sub    t8 <- 47128, 60305
    movl    $60305, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     return t8
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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <bool> %ebp-13 ]

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
    movl    $88609, %eax            #   0:     if     88609 >= 2301 goto 1_if_true
    movl    $2301, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $1, %eax                #   3:     assign v3 <- 1
    movb    %al, -13(%ebp)         
l_f2_6_while_cond:
    movl    $100, %eax              #   5:     if     100 # 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_10_if_true         #  13:     goto   10_if_true
    jmp     l_f2_10_if_true         #  14:     goto   10_if_true
    jmp     l_f2_10_if_true         #  15:     goto   10_if_true
    jmp     l_f2_11_if_false        #  16:     goto   11_if_false
l_f2_10_if_true:
    movl    $97924, %eax            #  18:     return 97924
    jmp     l_f2_exit              
    jmp     l_f2_9                  #  19:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_20_while_cond:
    movl    $100, %eax              #  23:     if     100 < 99 goto 21_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_21_while_body     
    jmp     l_f2_19                 #  24:     goto   19
l_f2_21_while_body:
l_f2_24_while_cond:
    movl    $60747, %eax            #  27:     if     60747 > 16061 goto 25_while_body
    movl    $16061, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_25_while_body     
    jmp     l_f2_23                 #  28:     goto   23
l_f2_25_while_body:
    jmp     l_f2_24_while_cond      #  30:     goto   24_while_cond
l_f2_23:
    jmp     l_f2_20_while_cond      #  32:     goto   20_while_cond
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   2:     goto   4
l_test_4:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_6                #   5:     goto   6
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   8:     if     t0 = t1 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   9:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
l_test_9_while_cond:
    jmp     l_test_13               #  14:     goto   13
    jmp     l_test_13               #  15:     goto   13
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_14               #  17:     goto   14
l_test_13:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_14:
    movl    $0, %eax                #  21:     if     0 # t2 goto 10_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  22:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  24:     goto   9_while_cond
l_test_8:
    jmp     l_test_18               #  26:     goto   18
    jmp     l_test_19               #  27:     goto   19
l_test_18:
    movl    $1, %eax                #  29:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_20               #  30:     goto   20
l_test_19:
    movl    $0, %eax                #  32:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_20:
    movzbl  -16(%ebp), %eax         #  34:     assign v0 <- t3
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
