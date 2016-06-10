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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 61 of <array 52 of <array 6 of <array 17 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 19 of <array 92 of <array 80 of <array 78 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #   2:     if     99 < 98 goto 3
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_3                 
    jmp     l_f0_4                  #   3:     goto   4
l_f0_3:
    movl    $1, %eax                #   5:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_5                  #   6:     goto   5
l_f0_4:
    movl    $0, %eax                #   8:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_5:
    movzbl  -13(%ebp), %eax         #  10:     return t10
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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]
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
    movl    $20793, %eax            #   0:     if     20793 >= 97588 goto 6
    movl    $97588, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_6:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t8
    movb    %al, -14(%ebp)         
l_f1_9_while_cond:
    movl    $100, %eax              #  10:     if     100 < 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_while_body:
    jmp     l_f1_14_if_false        #  13:     goto   14_if_false
    jmp     l_f1_12                 #  14:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $91959, %eax            #  17:     assign v2 <- 91959
    movl    %eax, -20(%ebp)        
    jmp     l_f1_9_while_cond       #  18:     goto   9_while_cond
l_f1_8:
    call    WriteLn                 #  20:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 48 of <array 10 of <array 67 of <array 100 of <array 15 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 20 of <array 48 of <array 92 of <array 50 of <array 98 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_f2_3_while_cond:
    jmp     l_f2_5                  #   3:     goto   5
    jmp     l_f2_5                  #   4:     goto   5
l_f2_5:
    jmp     l_f2_2                  #   6:     goto   2
    jmp     l_f2_3_while_cond       #   7:     goto   3_while_cond
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 19 of <array 92 of <array 80 of <array 78 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 39 of <array 61 of <array 52 of <array 6 of <array 17 of <char>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $31674, %eax            #   1:     if     31674 < 26582 goto 2_while_body
    movl    $26582, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $86055, %eax            #   4:     if     86055 >= 75490 goto 5_if_true
    movl    $75490, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    movl    $54968, %eax            #  13:     sub    t0 <- 54968, 20550
    movl    $20550, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     add    t1 <- t0, 2840
    movl    $2840, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     assign v0 <- t1
    movl    %eax, v0               
l_test_11_while_cond:
    jmp     l_test_12_while_body    #  17:     goto   12_while_body
    jmp     l_test_10               #  18:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  20:     goto   11_while_cond
l_test_10:
    jmp     l_test_exit            
l_test_16_while_cond:
    movl    $98834, %eax            #  24:     div    t2 <- 98834, 57505
    movl    $57505, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     div    t3 <- t2, 13794
    movl    $13794, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     if     t3 = 69322 goto 17_while_body
    movl    $69322, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  27:     goto   15
l_test_17_while_body:
    leal    v2, %eax                #  29:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     param  1 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  31:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  33:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    movl    $98, %eax               #  34:     if     98 <= 99 goto 21_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  35:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  37:     goto   20
l_test_22_if_false:
l_test_20:
    call    dummyCHARfunc           #  40:     call   t7 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    call    WriteLn                 #  41:     call   WriteLn
    movl    $68883, %eax            #  42:     assign v0 <- 68883
    movl    %eax, v0               
    movl    $98, %eax               #  43:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  44:     call   WriteChar
    addl    $4, %esp               
    movl    $90894, %eax            #  45:     assign v0 <- 90894
    movl    %eax, v0               
    jmp     l_test_16_while_cond    #  46:     goto   16_while_cond
l_test_15:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <array 39 of <array 61 of <array 52 of <array 6 of <array 17 of <char>>>>>>
    .long    5
    .long   39
    .long   61
    .long   52
    .long    6
    .long   17
    .skip 12618216
v2:                                 # <array 7 of <array 19 of <array 92 of <array 80 of <array 78 of <bool>>>>>>
    .long    5
    .long    7
    .long   19
    .long   92
    .long   80
    .long   78
    .skip 76352640








    # end of global data section
    #-----------------------------------------

    .end
##################################################
