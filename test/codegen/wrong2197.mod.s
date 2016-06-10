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
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 71 of <array 89 of <array 88 of <array 46 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     if     t3 >= 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_4:
    movzbl  -15(%ebp), %eax         #  10:     assign v2 <- t4
    movb    %al, -29(%ebp)         
    movl    $80034, %eax            #  11:     add    t5 <- 80034, 47399
    movl    $47399, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     add    t6 <- t5, 64996
    movl    $64996, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     sub    t7 <- t6, 48640
    movl    $48640, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 50 of <array 79 of <array 43 of <array 97 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 54 of <array 64 of <array 23 of <array 84 of <array 34 of <bool>>>>>>> %ebp+20 ]

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
    movl    $0, %eax                #   1:     if     0 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_8                  #   8:     goto   8
l_f1_8:
    call    dummyProcedure          #  10:     call   dummyProcedure
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     return t3
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 54 of <array 64 of <array 23 of <array 84 of <array 34 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 86 of <array 50 of <array 79 of <array 43 of <array 97 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 54 of <array 64 of <array 23 of <array 84 of <array 34 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 86 of <array 50 of <array 79 of <array 43 of <array 97 of <int>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <char> %ebp-45 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -1372587576(%ebp)  1372587528  [ $v2       <array 86 of <array 50 of <array 79 of <array 43 of <array 97 of <int>>>>>> %ebp-1372587576 ]
    #   -1599605328(%ebp)  227017752  [ $v3       <array 54 of <array 64 of <array 23 of <array 84 of <array 34 of <bool>>>>>> %ebp-1599605328 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1599605316, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $399901329, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1372587576(%ebp)    # local array 'v2': 5 dimensions
    movl    $86,-1372587572(%ebp)   #   dimension 1: 86 elements
    movl    $50,-1372587568(%ebp)   #   dimension 2: 50 elements
    movl    $79,-1372587564(%ebp)   #   dimension 3: 79 elements
    movl    $43,-1372587560(%ebp)   #   dimension 4: 43 elements
    movl    $97,-1372587556(%ebp)   #   dimension 5: 97 elements
    movl    $5,-1599605328(%ebp)    # local array 'v3': 5 dimensions
    movl    $54,-1599605324(%ebp)   #   dimension 1: 54 elements
    movl    $64,-1599605320(%ebp)   #   dimension 2: 64 elements
    movl    $23,-1599605316(%ebp)   #   dimension 3: 23 elements
    movl    $84,-1599605312(%ebp)   #   dimension 4: 84 elements
    movl    $34,-1599605308(%ebp)   #   dimension 5: 34 elements

    # function body
l_f2_1_while_cond:
    movl    $30501, %eax            #   1:     sub    t2 <- 30501, 72418
    movl    $72418, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $52068, %eax            #   2:     if     52068 = t2 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    leal    -1599605328(%ebp), %eax #   9:     &()    t3 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  3 <- t3
    pushl   %eax                   
    movl    $87454, %eax            #  11:     if     87454 > 51526 goto 8
    movl    $51526, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8                 
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_10                 #  15:     goto   10
l_f2_9:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f2_10:
    movzbl  -25(%ebp), %eax         #  19:     param  2 <- t4
    pushl   %eax                   
    leal    -1372587576(%ebp), %eax #  20:     &()    t5 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     param  1 <- t5
    pushl   %eax                   
    leal    -1599605328(%ebp), %eax #  22:     &()    t6 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     param  3 <- t6
    pushl   %eax                   
    movl    $1, %eax                #  24:     if     1 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12                
    jmp     l_f2_13                 #  25:     goto   13
l_f2_12:
    movl    $1, %eax                #  27:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_14                 #  28:     goto   14
l_f2_13:
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_f2_14:
    movzbl  -37(%ebp), %eax         #  32:     param  2 <- t7
    pushl   %eax                   
    leal    -1372587576(%ebp), %eax #  33:     &()    t8 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  34:     param  1 <- t8
    pushl   %eax                   
    movl    $99, %eax               #  35:     param  0 <- 99
    pushl   %eax                   
    call    f1                      #  36:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  37:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  38:     call   t10 <- f1
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  39:     param  0 <- t10
    pushl   %eax                   
    call    WriteChar               #  40:     call   WriteChar
    addl    $4, %esp               
    movl    $77658, %eax            #  41:     param  0 <- 77658
    pushl   %eax                   
    call    WriteInt                #  42:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $1599605316, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t1 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   5:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   7:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
