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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 12 of <array 5 of <array 48 of <array 10 of <array 14 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t6 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    call    WriteLn                 #   4:     call   WriteLn
    movl    $96412, %eax            #   5:     if     96412 # 69834 goto 6_if_true
    movl    $69834, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_10_while_cond:
    movl    $97, %eax               #  12:     if     97 < 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_11_while_body     
    jmp     l_f0_9                  #  13:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  15:     goto   10_while_cond
l_f0_9:
    movl    $86645, %eax            #  17:     if     86645 >= 34860 goto 14
    movl    $34860, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_14                
    jmp     l_f0_15                 #  18:     goto   15
l_f0_14:
    movl    $1, %eax                #  20:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  21:     goto   16
l_f0_15:
    movl    $0, %eax                #  23:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_16:
    movzbl  -14(%ebp), %eax         #  25:     return t7
    jmp     l_f0_exit              
    movl    $99, %eax               #  26:     if     99 <= 99 goto 19_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  27:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  29:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_0                  #  32:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  35:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_f0_24_while_cond:
    movl    $100, %eax              #  37:     if     100 = 100 goto 25_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_25_while_body     
    jmp     l_f0_23                 #  38:     goto   23
l_f0_25_while_body:
    movl    $92486, %eax            #  40:     if     92486 < 14591 goto 28_if_true
    movl    $14591, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_28_if_true        
    jmp     l_f0_29_if_false        #  41:     goto   29_if_false
l_f0_28_if_true:
    jmp     l_f0_27                 #  43:     goto   27
l_f0_29_if_false:
l_f0_27:
    jmp     l_f0_24_while_cond      #  46:     goto   24_while_cond
l_f0_23:

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $95666, %eax            #   3:     if     95666 <= 81325 goto 3_while_body
    movl    $81325, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    movl    $22564, %eax            #   6:     if     22564 <= 38038 goto 6
    movl    $38038, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $1, %eax                #   9:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $0, %eax                #  12:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  14:     assign v1 <- t7
    movb    %al, -15(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
    jmp     l_f1_2_while_cond       #  17:     goto   2_while_cond
l_f1_1:
    movl    $18730, %eax            #  19:     assign v2 <- 18730
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $99, %eax               #   4:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_5                  #   5:     goto   5
l_f2_5:
l_f2_9_while_cond:
    movl    $99, %eax               #   8:     if     99 = 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_10_while_body     
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  11:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
l_f2_13_while_cond:
    jmp     l_f2_14_while_body      #  16:     goto   14_while_body
    jmp     l_f2_14_while_body      #  17:     goto   14_while_body
l_f2_14_while_body:
    leal    _str_1, %eax            #  19:     &()    t6 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  21:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_13_while_cond      #  22:     goto   13_while_cond
    jmp     l_f2_23                 #  23:     goto   23
l_f2_23:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_25                 #  26:     goto   25
    movl    $0, %eax                #  27:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f2_25:
    movl    $1, %eax                #  29:     if     1 # t7 goto 20_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  30:     goto   21_if_false
l_f2_20_if_true:
l_f2_30_while_cond:
    jmp     l_f2_29                 #  33:     goto   29
    jmp     l_f2_30_while_cond      #  34:     goto   30_while_cond
l_f2_29:
    call    dummyINTfunc            #  36:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f2_19                 #  37:     goto   19
l_f2_21_if_false:
l_f2_19:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    movl    $77167, %eax            #   0:     assign v0 <- 77167
    movl    %eax, v0               
    movl    $3550, %eax             #   1:     div    t0 <- 3550, 64156
    movl    $64156, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 93908
    movl    $93908, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t2 <- t1, 80572
    movl    $80572, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t3 <- t2, 23535
    movl    $23535, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $57828, %eax            #   5:     add    t4 <- 57828, t3
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    call    ReadInt                 #   8:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
