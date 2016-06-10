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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 81 of <array 75 of <array 70 of <array 27 of <array 18 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 25 of <array 86 of <array 91 of <array 21 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 59 of <array 31 of <array 57 of <array 44 of <array 90 of <bool>>>>>>> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $32275, %eax            #   4:     assign v3 <- 32275
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   7:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $32370, %eax            #   8:     if     32370 = 2105 goto 7_if_true
    movl    $2105, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   9:     goto   8_if_false
l_f0_7_if_true:
l_f0_11_while_cond:
    movl    $23712, %eax            #  12:     if     23712 > 36427 goto 12_while_body
    movl    $36427, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_14                 #  17:     goto   14
l_f0_14:
    movl    $100, %eax              #  19:     if     100 <= 97 goto 18
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_18                
    jmp     l_f0_19                 #  20:     goto   19
l_f0_18:
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_20                 #  23:     goto   20
l_f0_19:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_20:
    movzbl  -14(%ebp), %eax         #  27:     assign v4 <- t5
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  28:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               
l_f0_24_while_cond:
    movl    $98, %eax               #  31:     if     98 < 98 goto 25_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_25_while_body     
    jmp     l_f0_23                 #  32:     goto   23
l_f0_25_while_body:
    jmp     l_f0_24_while_cond      #  34:     goto   24_while_cond
l_f0_23:
    call    dummyBOOLfunc           #  36:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_6                  #  37:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 41 of <array 38 of <array 72 of <array 14 of <array 20 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 91 of <array 90 of <array 74 of <array 80 of <char>>>>>>> %ebp+16 ]

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
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $99, %eax               #   5:     if     99 > 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  17:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 85 of <array 27 of <array 28 of <array 60 of <array 59 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 72 of <array 48 of <array 25 of <array 30 of <array 46 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
l_f2_5_while_cond:
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_5_while_cond       #   3:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_9_if_false         #   8:     goto   9_if_false
l_f2_12_while_cond:
    movl    $1, %eax                #  10:     if     1 # 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_13_while_body     
    jmp     l_f2_11                 #  11:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  13:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_7                  #  15:     goto   7
l_f2_9_if_false:
l_f2_7:
    movl    $40187, %eax            #  18:     mul    t4 <- 40187, 5049
    movl    $5049, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     mul    t5 <- t4, 33683
    movl    $33683, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     if     t5 > 28297 goto 16
    movl    $28297, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_16                
    jmp     l_f2_17                 #  21:     goto   17
l_f2_16:
    movl    $1, %eax                #  23:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_18                 #  24:     goto   18
l_f2_17:
    movl    $0, %eax                #  26:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_18:
    movzbl  -21(%ebp), %eax         #  28:     assign v3 <- t6
    movb    %al, 20(%ebp)          

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 59 of <array 31 of <array 57 of <array 44 of <array 90 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 25 of <array 86 of <array 91 of <array 21 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 81 of <array 75 of <array 70 of <array 27 of <array 18 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    jmp     l_test_exit            
    leal    v2, %eax                #   1:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   5:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   7:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 81 of <array 75 of <array 70 of <array 27 of <array 18 of <int>>>>>>
    .long    5
    .long   81
    .long   75
    .long   70
    .long   27
    .long   18
    .skip 826686000
v1:                                 # <array 9 of <array 25 of <array 86 of <array 91 of <array 21 of <char>>>>>>
    .long    5
    .long    9
    .long   25
    .long   86
    .long   91
    .long   21
    .skip 36977850
    .align   4
v2:                                 # <array 59 of <array 31 of <array 57 of <array 44 of <array 90 of <bool>>>>>>
    .long    5
    .long   59
    .long   31
    .long   57
    .long   44
    .long   90
    .skip 412841880








    # end of global data section
    #-----------------------------------------

    .end
##################################################
