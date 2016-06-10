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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 81 of <array 18 of <array 79 of <array 95 of <array 89 of <bool>>>>>>> %ebp+8 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_5                  #   2:     goto   5
l_f0_5:
    jmp     l_f0_2_while_body       #   4:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   8:     if     100 >= 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #   9:     goto   13_if_false
l_f0_12_if_true:
    leal    _str_1, %eax            #  11:     &()    t5 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_exit              
    jmp     l_f0_11                 #  15:     goto   11
l_f0_13_if_false:
l_f0_11:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -41(%ebp)   1  [ $v1       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t5 <- t4, 58331
    movl    $58331, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t6 <- t5, 51469
    movl    $51469, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t7 <- t6, 36035
    movl    $36035, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     return t7
    jmp     l_f1_exit              
    movl    $100, %eax              #   5:     assign v1 <- 100
    movb    %al, -41(%ebp)         
    movl    $65750, %eax            #   6:     mul    t8 <- 65750, 52596
    movl    $52596, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     add    t9 <- t8, 7052
    movl    $7052, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     sub    t10 <- t9, 19645
    movl    $19645, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 50 of <array 70 of <array 37 of <array 39 of <array 64 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 < 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $83223, %eax            #   5:     if     83223 < 62646 goto 7_if_true
    movl    $62646, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   6:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   8:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $100, %eax              #  11:     if     100 = 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_12                 #  12:     goto   12
l_f2_11:
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_13                 #  15:     goto   13
l_f2_12:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_13:
    movzbl  -21(%ebp), %eax         #  19:     return t6
    jmp     l_f2_exit              
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  21:     goto   16_while_cond
    movl    $46634, %eax            #  22:     if     46634 > 9846 goto 19
    movl    $9846, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_19                
    jmp     l_f2_20                 #  23:     goto   20
l_f2_19:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_21                 #  26:     goto   21
l_f2_20:
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f2_21:
    movzbl  -22(%ebp), %eax         #  30:     return t7
    jmp     l_f2_exit              
l_f2_24_while_cond:
    movl    $99, %eax               #  32:     if     99 < 98 goto 25_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_25_while_body     
    jmp     l_f2_23                 #  33:     goto   23
l_f2_25_while_body:
    jmp     l_f2_24_while_cond      #  35:     goto   24_while_cond
l_f2_23:
    jmp     l_f2_1                  #  37:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_28                 #  40:     goto   28
    jmp     l_f2_28                 #  41:     goto   28
    jmp     l_f2_29                 #  42:     goto   29
l_f2_28:
    movl    $1, %eax                #  44:     assign t8 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f2_30                 #  45:     goto   30
l_f2_29:
    movl    $0, %eax                #  47:     assign t8 <- 0
    movb    %al, -23(%ebp)         
l_f2_30:
    movzbl  -23(%ebp), %eax         #  49:     return t8
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 50 of <array 70 of <array 37 of <array 39 of <array 64 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    jmp     l_test_1_while_cond     #   2:     goto   1_while_cond
l_test_0:
    movl    $97, %eax               #   4:     param  1 <- 97
    pushl   %eax                   
    leal    v1, %eax                #   5:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   7:     call   t1 <- f2
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     if     t1 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_7                #   9:     goto   7
l_test_9:
    jmp     l_test_7                #  11:     goto   7
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_8                #  13:     goto   8
l_test_7:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_8:
    movzbl  -18(%ebp), %eax         #  17:     assign v0 <- t2
    movb    %al, v0                
    call    ReadInt                 #  18:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <array 50 of <array 70 of <array 37 of <array 39 of <array 64 of <char>>>>>>
    .long    5
    .long   50
    .long   70
    .long   37
    .long   39
    .long   64
    .skip 323232000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
