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
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 96 of <array 87 of <array 48 of <array 45 of <bool>>>>>>> %ebp+8 ]

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
    movl    $3114, %eax             #   0:     div    t4 <- 3114, 84293
    movl    $84293, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 4290
    movl    $4290, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 3063
    movl    $3063, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t6
    jmp     l_f0_exit              
    call    dummyINTfunc            #   4:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    dummyINTfunc            #   5:     call   t8 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 41 of <array 95 of <array 31 of <array 87 of <array 47 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 28 of <array 91 of <array 36 of <array 51 of <array 65 of <int>>>>>>> %ebp+16 ]
    #    -25(%ebp)   1  [ $v4       <bool> %ebp-25 ]

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
    movl    $84838, %eax            #   1:     sub    t4 <- 84838, 13463
    movl    $13463, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t4 # 37422 goto 2_while_body
    movl    $37422, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $4780, %eax             #   5:     return 4780
    jmp     l_f1_exit              
    movl    $97, %eax               #   6:     if     97 <= 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  14:     assign v4 <- t5
    movb    %al, -25(%ebp)         
    jmp     l_f1_1_while_cond       #  15:     goto   1_while_cond
l_f1_0:
    leal    _str_1, %eax            #  17:     &()    t6 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  19:     call   WriteStr
    addl    $4, %esp               
l_f1_12_while_cond:
    movl    $97, %eax               #  21:     if     97 > 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_15                
    jmp     l_f1_11                 #  22:     goto   11
l_f1_15:
    jmp     l_f1_12_while_cond      #  24:     goto   12_while_cond
l_f1_11:

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
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v1       <char> %ebp-30 ]

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
l_f2_1_while_cond:
    movl    $29345, %eax            #   1:     add    t4 <- 29345, 357
    movl    $357, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t5 <- t4, 88479
    movl    $88479, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t6 <- t5, 44735
    movl    $44735, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t7 <- t6, 964
    movl    $964, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t7 # 43705 goto 2_while_body
    movl    $43705, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    movl    $47155, %eax            #   8:     if     47155 >= 90573 goto 5_if_true
    movl    $90573, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   9:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #  11:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyBOOLfunc           #  14:     call   t8 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f2_1_while_cond       #  15:     goto   1_while_cond
l_f2_0:
    movl    $97, %eax               #  17:     assign v1 <- 97
    movb    %al, -30(%ebp)         
l_f2_11_while_cond:
    jmp     l_f2_15                 #  19:     goto   15
    jmp     l_f2_15                 #  20:     goto   15
    jmp     l_f2_15                 #  21:     goto   15
    jmp     l_f2_15                 #  22:     goto   15
    jmp     l_f2_15                 #  23:     goto   15
l_f2_15:
    jmp     l_f2_12_while_body      #  25:     goto   12_while_body
    jmp     l_f2_10                 #  26:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  28:     goto   11_while_cond
l_f2_10:

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
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
    jmp     l_test_0                #   1:     goto   0
    movl    $0, %eax                #   2:     if     0 = 0 goto 4_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4_if_true       
    jmp     l_test_5_if_false       #   3:     goto   5_if_false
l_test_4_if_true:
    movl    $64613, %eax            #   5:     param  0 <- 64613
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    call    WriteLn                 #   7:     call   WriteLn
l_test_10_while_cond:
    jmp     l_test_9                #   9:     goto   9
    jmp     l_test_10_while_cond    #  10:     goto   10_while_cond
l_test_9:
    movl    $97, %eax               #  12:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_3                #  13:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_1_while_cond     #  16:     goto   1_while_cond
l_test_0:
    call    dummyProcedure          #  18:     call   dummyProcedure
    jmp     l_test_15               #  19:     goto   15
l_test_15:
    movl    $1, %eax                #  21:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_17               #  22:     goto   17
    movl    $0, %eax                #  23:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_17:
    movzbl  -13(%ebp), %eax         #  25:     assign v1 <- t0
    movb    %al, v1                
    movl    $99, %eax               #  26:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_24_if_true       #  27:     goto   24_if_true
    jmp     l_test_24_if_true       #  28:     goto   24_if_true
    jmp     l_test_25_if_false      #  29:     goto   25_if_false
l_test_24_if_true:
    call    dummyCHARfunc           #  31:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  32:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_30               #  33:     goto   30
l_test_30:
    movl    $85234, %eax            #  35:     if     85234 < 52943 goto 34
    movl    $52943, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_34              
    jmp     l_test_35               #  36:     goto   35
l_test_34:
    movl    $1, %eax                #  38:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_36               #  39:     goto   36
l_test_35:
    movl    $0, %eax                #  41:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_36:
    movzbl  -16(%ebp), %eax         #  43:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_23               #  44:     goto   23
l_test_25_if_false:
l_test_23:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
