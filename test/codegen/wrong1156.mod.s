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
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 92 of <array 2 of <array 97 of <array 68 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 24 of <array 79 of <array 85 of <array 57 of <array 4 of <char>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    movl    $21475, %eax            #   0:     if     21475 < 99093 goto 1_if_true
    movl    $99093, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
    movl    $0, %eax                #   5:     assign v3 <- 0
    movb    %al, -21(%ebp)         
l_f0_9_while_cond:
    movl    $100, %eax              #   7:     if     100 >= 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #   8:     goto   8
l_f0_10_while_body:
    jmp     l_f0_14_if_false        #  10:     goto   14_if_false
    jmp     l_f0_12                 #  11:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $37477, %eax            #  14:     return 37477
    jmp     l_f0_exit              
    jmp     l_f0_9_while_cond       #  15:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  17:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_17_while_cond:
    jmp     l_f0_16                 #  21:     goto   16
    movl    $100, %eax              #  22:     if     100 >= 98 goto 22
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_22                
    jmp     l_f0_23                 #  23:     goto   23
l_f0_22:
    movl    $1, %eax                #  25:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_24                 #  26:     goto   24
l_f0_23:
    movl    $0, %eax                #  28:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_24:
    movzbl  -14(%ebp), %eax         #  30:     assign v3 <- t8
    movb    %al, -21(%ebp)         
    call    ReadInt                 #  31:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_17_while_cond      #  32:     goto   17_while_cond
l_f0_16:
    call    dummyBOOLfunc           #  34:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
l_f1_2_while_body:
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
    call    dummyINTfunc            #   6:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 51 of <array 40 of <array 99 of <array 38 of <array 19 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 100 of <array 16 of <array 48 of <array 60 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 55 of <array 33 of <array 10 of <array 77 of <array 18 of <char>>>>>>> %ebp+20 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]

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
    movl    $73041, %eax            #   0:     assign v4 <- 73041
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #   1:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    movl    $55261, %eax            #   2:     sub    t8 <- 55261, 27537
    movl    $27537, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t9 <- t8, 36403
    movl    $36403, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t10 <- t9, 72743
    movl    $72743, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $15938, %eax            #   5:     if     15938 <= t10 goto 3
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_3                 
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $1, %eax                #   8:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_5                  #   9:     goto   5
l_f2_4:
    movl    $0, %eax                #  11:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_5:
    movzbl  -17(%ebp), %eax         #  13:     return t11
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 55 of <array 33 of <array 10 of <array 77 of <array 18 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 92 of <array 100 of <array 16 of <array 48 of <array 60 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 51 of <array 40 of <array 99 of <array 38 of <array 19 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <char> %ebp-34 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]

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
l_test_5_while_cond:
    movl    $12260, %eax            #   1:     if     12260 <= 85663 goto 6_while_body
    movl    $85663, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   2:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   4:     goto   5_while_cond
l_test_4:
    movl    $2758, %eax             #   6:     if     2758 > 86427 goto 9_if_true
    movl    $86427, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #   9:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_12               #  12:     goto   12
l_test_12:
    jmp     l_test_0                #  14:     goto   0
l_test_0:
    call    dummyCHARfunc           #  16:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  17:     assign v0 <- t0
    movb    %al, v0                
    movl    $17615, %eax            #  18:     mul    t1 <- 17615, 8993
    movl    $8993, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     if     t1 > 89751 goto 17_if_true
    movl    $89751, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_17_if_true      
    jmp     l_test_18_if_false      #  20:     goto   18_if_false
l_test_17_if_true:
    leal    v3, %eax                #  22:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  3 <- t2
    pushl   %eax                   
    movl    $100, %eax              #  24:     param  2 <- 100
    pushl   %eax                   
    leal    v2, %eax                #  25:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  1 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  27:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  29:     call   t5 <- f2
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    call    dummyCHARfunc           #  30:     call   t6 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
    call    dummyINTfunc            #  31:     call   t7 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    $100, %eax              #  32:     if     100 # 99 goto 24_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_24_if_true      
    jmp     l_test_25_if_false      #  33:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  35:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_16               #  38:     goto   16
l_test_18_if_false:
l_test_16:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 51 of <array 40 of <array 99 of <array 38 of <array 19 of <bool>>>>>>
    .long    5
    .long   51
    .long   40
    .long   99
    .long   38
    .long   19
    .skip 145815120
v2:                                 # <array 92 of <array 100 of <array 16 of <array 48 of <array 60 of <bool>>>>>>
    .long    5
    .long   92
    .long  100
    .long   16
    .long   48
    .long   60
    .skip 423936000
v3:                                 # <array 55 of <array 33 of <array 10 of <array 77 of <array 18 of <char>>>>>>
    .long    5
    .long   55
    .long   33
    .long   10
    .long   77
    .long   18
    .skip 25155900








    # end of global data section
    #-----------------------------------------

    .end
##################################################
