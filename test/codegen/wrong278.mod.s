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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t5       <char> %ebp-69 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 9 of <array 5 of <array 6 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 7 of <array 9 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #   1:     return t5
    jmp     l_f0_exit              
    movl    $32192, %eax            #   2:     add    t6 <- 32192, 25112
    movl    $25112, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   3:     assign v1 <- t6
    movl    %eax, 12(%ebp)         
l_f0_3_while_cond:
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   6:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   7:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $64812, %eax            #   8:     mul    t8 <- 64812, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   9:     add    t9 <- t8, 8367
    movl    $8367, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  11:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  12:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  13:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t12 <- t11, 86351
    movl    $86351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  16:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  17:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t15 <- t14, 85051
    movl    $85051, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t18 <- t17, 9287
    movl    $9287, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  27:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  29:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $99, %eax               #  30:     assign @t22 <- 99
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyINTfunc            #  31:     call   t23 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    jmp     l_f0_3_while_cond       #  32:     goto   3_while_cond

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 2 of <array 2 of <array 3 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 2 of <array 1 of <array 2 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -21(%ebp)   1  [ $v4       <char> %ebp-21 ]

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
    jmp     l_f1_4                  #   0:     goto   4
l_f1_4:
    movl    $1, %eax                #   2:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t5
    jmp     l_f1_exit              
    movl    $40529, %eax            #   7:     add    t6 <- 40529, 41821
    movl    $41821, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     assign v3 <- t6
    movl    %eax, 20(%ebp)         
    movl    $99, %eax               #   9:     assign v4 <- 99
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 9 of <array 9 of <array 5 of <array 6 of <array 2 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 2 of <array 1 of <array 2 of <array 8 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 2 of <array 2 of <array 3 of <array 10 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <char>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 7 of <array 9 of <char>>>>>>> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -48(%ebp)   4  [ $v1       <int> %ebp-48 ]
    #   -912(%ebp)  864  [ $v2       <array 7 of <array 2 of <array 2 of <array 3 of <array 10 of <bool>>>>>> %ebp-912 ]
    #   -1960(%ebp)  1048  [ $v3       <array 8 of <array 2 of <array 1 of <array 2 of <array 8 of <int>>>>>> %ebp-1960 ]
    #   -6844(%ebp)  4884  [ $v4       <array 9 of <array 9 of <array 5 of <array 6 of <array 2 of <bool>>>>>> %ebp-6844 ]
    #   -9892(%ebp)  3048  [ $v5       <array 3 of <array 4 of <array 4 of <array 7 of <array 9 of <char>>>>>> %ebp-9892 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9880, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2470, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-912(%ebp)           # local array 'v2': 5 dimensions
    movl    $7,-908(%ebp)           #   dimension 1: 7 elements
    movl    $2,-904(%ebp)           #   dimension 2: 2 elements
    movl    $2,-900(%ebp)           #   dimension 3: 2 elements
    movl    $3,-896(%ebp)           #   dimension 4: 3 elements
    movl    $10,-892(%ebp)          #   dimension 5: 10 elements
    movl    $5,-1960(%ebp)          # local array 'v3': 5 dimensions
    movl    $8,-1956(%ebp)          #   dimension 1: 8 elements
    movl    $2,-1952(%ebp)          #   dimension 2: 2 elements
    movl    $1,-1948(%ebp)          #   dimension 3: 1 elements
    movl    $2,-1944(%ebp)          #   dimension 4: 2 elements
    movl    $8,-1940(%ebp)          #   dimension 5: 8 elements
    movl    $5,-6844(%ebp)          # local array 'v4': 5 dimensions
    movl    $9,-6840(%ebp)          #   dimension 1: 9 elements
    movl    $9,-6836(%ebp)          #   dimension 2: 9 elements
    movl    $5,-6832(%ebp)          #   dimension 3: 5 elements
    movl    $6,-6828(%ebp)          #   dimension 4: 6 elements
    movl    $2,-6824(%ebp)          #   dimension 5: 2 elements
    movl    $5,-9892(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-9888(%ebp)          #   dimension 1: 3 elements
    movl    $4,-9884(%ebp)          #   dimension 2: 4 elements
    movl    $4,-9880(%ebp)          #   dimension 3: 4 elements
    movl    $7,-9876(%ebp)          #   dimension 4: 7 elements
    movl    $9,-9872(%ebp)          #   dimension 5: 9 elements

    # function body
l_f2_1_while_cond:
    movl    $12314, %eax            #   1:     param  3 <- 12314
    pushl   %eax                   
    movl    $37416, %eax            #   2:     param  2 <- 37416
    pushl   %eax                   
    leal    -1960(%ebp), %eax       #   3:     &()    t5 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  1 <- t5
    pushl   %eax                   
    leal    -912(%ebp), %eax        #   5:     &()    t6 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   7:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   8:     if     t7 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_while_body:
    jmp     l_f2_exit              
    movl    $41760, %eax            #  12:     assign v1 <- 41760
    movl    %eax, -48(%ebp)        
    leal    _str_1, %eax            #  13:     &()    t8 <- _str_1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  15:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
l_f2_0:
    leal    -9892(%ebp), %eax       #  19:     &()    t9 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     param  3 <- t9
    pushl   %eax                   
    movl    $100, %eax              #  21:     param  2 <- 100
    pushl   %eax                   
    movl    $39013, %eax            #  22:     param  1 <- 39013
    pushl   %eax                   
    leal    -6844(%ebp), %eax       #  23:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  25:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    call    ReadInt                 #  26:     call   t12 <- ReadInt
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $9880, %esp             # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 8 of <array 2 of <array 1 of <array 2 of <array 8 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <array 2 of <array 2 of <array 3 of <array 10 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    jmp     l_test_6_while_body     #   9:     goto   6_while_body
l_test_6_while_body:
l_test_9_while_cond:
    movl    $72372, %eax            #  12:     if     72372 # 70906 goto 10_while_body
    movl    $70906, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  13:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  15:     goto   9_while_cond
l_test_8:
l_test_13_while_cond:
    jmp     l_test_12               #  18:     goto   12
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  22:     goto   16_while_cond
    movl    $20274, %eax            #  23:     assign v0 <- 20274
    movl    %eax, v0               
    movl    $1, %eax                #  24:     if     1 = 0 goto 20_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_if_true      
    jmp     l_test_21_if_false      #  25:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  27:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $90695, %eax            #  30:     if     90695 >= 93609 goto 24_if_true
    movl    $93609, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  31:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  33:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_5_while_cond     #  36:     goto   5_while_cond
l_test_28_while_cond:
l_test_31_while_cond:
    jmp     l_test_31_while_cond    #  39:     goto   31_while_cond
    movl    $53479, %eax            #  40:     param  3 <- 53479
    pushl   %eax                   
    movl    $19797, %eax            #  41:     param  2 <- 19797
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  44:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  45:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  46:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_test_28_while_cond    #  47:     goto   28_while_cond

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <array 7 of <array 2 of <array 2 of <array 3 of <array 10 of <bool>>>>>>
    .long    5
    .long    7
    .long    2
    .long    2
    .long    3
    .long   10
    .skip  840
v2:                                 # <array 8 of <array 2 of <array 1 of <array 2 of <array 8 of <int>>>>>>
    .long    5
    .long    8
    .long    2
    .long    1
    .long    2
    .long    8
    .skip 1024








    # end of global data section
    #-----------------------------------------

    .end
##################################################
