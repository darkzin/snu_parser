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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 9 of <array 8 of <char>>>>>>> %ebp+8 ]
    #    -41(%ebp)   1  [ $v1       <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $v2       <char> %ebp-42 ]

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
    movl    $51930, %eax            #   0:     mul    t7 <- 51930, 61087
    movl    $61087, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     mul    t8 <- t7, 54886
    movl    $54886, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $75158, %eax            #   2:     sub    t9 <- 75158, t8
    movl    -36(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     add    t10 <- t9, 8191
    movl    $8191, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t10
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    call    ReadInt                 #   6:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_4_if_false         #   7:     goto   4_if_false
    movl    $97, %eax               #   8:     if     97 >= 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_6                 
    jmp     l_f0_7                  #   9:     goto   7
l_f0_6:
    movl    $1, %eax                #  11:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #  12:     goto   8
l_f0_7:
    movl    $0, %eax                #  14:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_8:
    movzbl  -21(%ebp), %eax         #  16:     assign v1 <- t12
    movb    %al, -41(%ebp)         
    movl    $22437, %eax            #  17:     if     22437 > 70839 goto 11_if_true
    movl    $70839, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  18:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  20:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $99, %eax               #  23:     assign v2 <- 99
    movb    %al, -42(%ebp)         
    movl    $16017, %eax            #  24:     if     16017 <= 65738 goto 16_if_true
    movl    $65738, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  25:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  27:     goto   15
l_f0_17_if_false:
l_f0_15:
    movl    $0, %eax                #  30:     if     0 # 1 goto 20
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_20                
    jmp     l_f0_21                 #  31:     goto   21
l_f0_20:
    movl    $1, %eax                #  33:     assign t13 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_22                 #  34:     goto   22
l_f0_21:
    movl    $0, %eax                #  36:     assign t13 <- 0
    movb    %al, -22(%ebp)         
l_f0_22:
    movzbl  -22(%ebp), %eax         #  38:     assign v1 <- t13
    movb    %al, -41(%ebp)         
    movl    $72091, %eax            #  39:     if     72091 >= 16655 goto 25_if_true
    movl    $16655, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  40:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_24                 #  42:     goto   24
l_f0_26_if_false:
l_f0_24:
    call    dummyINTfunc            #  45:     call   t14 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f0_2                  #  46:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 10 of <array 6 of <array 6 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 9 of <array 6 of <array 10 of <array 1 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 10 of <array 9 of <array 6 of <array 10 of <int>>>>>>> %ebp+20 ]
    #    -26(%ebp)   1  [ $v4       <char> %ebp-26 ]

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
    movl    $40977, %eax            #   1:     sub    t7 <- 40977, 31055
    movl    $31055, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t8 <- t7, 32081
    movl    $32081, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $42323, %eax            #   3:     if     42323 >= t8 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    movl    $100, %eax              #   6:     if     100 # 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_5                 
    jmp     l_f1_6                  #   7:     goto   6
l_f1_5:
    movl    $1, %eax                #   9:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_7                  #  10:     goto   7
l_f1_6:
    movl    $0, %eax                #  12:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f1_7:
    movzbl  -25(%ebp), %eax         #  14:     return t9
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $98, %eax               #  16:     if     98 < 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  19:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_1_while_cond       #  21:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #  23:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #  24:     assign v4 <- 97
    movb    %al, -26(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 9 of <array 8 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -16184(%ebp)  16152  [ $v2       <array 4 of <array 7 of <array 8 of <array 9 of <array 8 of <char>>>>>> %ebp-16184 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16172, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4043, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-16184(%ebp)         # local array 'v2': 5 dimensions
    movl    $4,-16180(%ebp)         #   dimension 1: 4 elements
    movl    $7,-16176(%ebp)         #   dimension 2: 7 elements
    movl    $8,-16172(%ebp)         #   dimension 3: 8 elements
    movl    $9,-16168(%ebp)         #   dimension 4: 9 elements
    movl    $8,-16164(%ebp)         #   dimension 5: 8 elements

    # function body
    movl    $100, %eax              #   0:     if     100 < 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #   8:     assign v0 <- t7
    movb    %al, 8(%ebp)           
    leal    -16184(%ebp), %eax      #   9:     &()    t8 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  11:     call   t9 <- f0
    addl    $4, %esp               
    movl    %eax, -32(%ebp)        
l_f2_7_while_cond:
    movl    $98150, %eax            #  13:     add    t10 <- 98150, 83059
    movl    $83059, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t11 <- t10, 82152
    movl    $82152, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $86822, %eax            #  15:     if     86822 <= t11 goto 8_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #  16:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  18:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $16172, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 10 of <array 9 of <array 6 of <array 10 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 9 of <array 9 of <array 6 of <array 10 of <array 1 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 10 of <array 6 of <array 6 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 9 of <array 8 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    leal    v2, %eax                #   2:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  3 <- t1
    pushl   %eax                   
    leal    v1, %eax                #   4:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  2 <- t2
    pushl   %eax                   
    movl    $1, %eax                #   6:     param  1 <- 1
    pushl   %eax                   
    leal    v0, %eax                #   7:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   9:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  10:     if     t4 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_3_while_body     #  11:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_2_while_cond     #  13:     goto   2_while_cond
    leal    v3, %eax                #  14:     &()    t5 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  16:     call   t6 <- f0
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        

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
v0:                                 # <array 3 of <array 10 of <array 6 of <array 6 of <array 8 of <int>>>>>>
    .long    5
    .long    3
    .long   10
    .long    6
    .long    6
    .long    8
    .skip 34560
v1:                                 # <array 9 of <array 9 of <array 6 of <array 10 of <array 1 of <char>>>>>>
    .long    5
    .long    9
    .long    9
    .long    6
    .long   10
    .long    1
    .skip 4860
v2:                                 # <array 6 of <array 10 of <array 9 of <array 6 of <array 10 of <int>>>>>>
    .long    5
    .long    6
    .long   10
    .long    9
    .long    6
    .long   10
    .skip 129600
v3:                                 # <array 4 of <array 7 of <array 8 of <array 9 of <array 8 of <char>>>>>>
    .long    5
    .long    4
    .long    7
    .long    8
    .long    9
    .long    8
    .skip 16128








    # end of global data section
    #-----------------------------------------

    .end
##################################################
