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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 1 of <array 8 of <array 4 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 1 of <array 10 of <array 2 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 4 of <array 5 of <array 7 of <array 1 of <char>>>>>>> %ebp+16 ]
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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $8998, %eax             #   1:     if     8998 >= 52169 goto 2_if_true
    movl    $52169, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $97, %eax               #   9:     if     97 # 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  10:     goto   8_if_false
l_f0_7_if_true:
    movl    $99, %eax               #  12:     return 99
    jmp     l_f0_exit              
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_f0_12                 #  14:     goto   12
l_f0_12:
    movl    $97, %eax               #  16:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  17:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

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
    movl    $1, %eax                #   0:     assign v1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_5                  #   2:     goto   5
l_f1_5:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_0:
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
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
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 8 of <array 4 of <array 5 of <array 7 of <array 1 of <char>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 1 of <array 1 of <array 10 of <array 2 of <array 1 of <int>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <ptr(4) to <array 9 of <array 1 of <array 8 of <array 4 of <array 8 of <int>>>>>>> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t27      <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 4 of <array 5 of <array 7 of <array 1 of <char>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t4       <ptr(4) to <array 1 of <array 1 of <array 10 of <array 2 of <array 1 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 1 of <array 8 of <array 4 of <array 8 of <int>>>>>>> %ebp-92 ]
    #    -93(%ebp)   1  [ $t6       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 6 of <array 6 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 3 of <array 9 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 9 of <array 4 of <array 5 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 7 of <array 2 of <array 1 of <array 8 of <char>>>>>>> %ebp+20 ]
    #   -109(%ebp)   1  [ $v5       <char> %ebp-109 ]
    #   -9352(%ebp)  9240  [ $v6       <array 9 of <array 1 of <array 8 of <array 4 of <array 8 of <int>>>>>> %ebp-9352 ]
    #   -9456(%ebp)  104  [ $v7       <array 1 of <array 1 of <array 10 of <array 2 of <array 1 of <int>>>>>> %ebp-9456 ]
    #   -10600(%ebp)  1144  [ $v8       <array 8 of <array 4 of <array 5 of <array 7 of <array 1 of <char>>>>>> %ebp-10600 ]
    #   -10604(%ebp)   4  [ $v9       <int> %ebp-10604 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10592, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2648, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9352(%ebp)          # local array 'v6': 5 dimensions
    movl    $9,-9348(%ebp)          #   dimension 1: 9 elements
    movl    $1,-9344(%ebp)          #   dimension 2: 1 elements
    movl    $8,-9340(%ebp)          #   dimension 3: 8 elements
    movl    $4,-9336(%ebp)          #   dimension 4: 4 elements
    movl    $8,-9332(%ebp)          #   dimension 5: 8 elements
    movl    $5,-9456(%ebp)          # local array 'v7': 5 dimensions
    movl    $1,-9452(%ebp)          #   dimension 1: 1 elements
    movl    $1,-9448(%ebp)          #   dimension 2: 1 elements
    movl    $10,-9444(%ebp)         #   dimension 3: 10 elements
    movl    $2,-9440(%ebp)          #   dimension 4: 2 elements
    movl    $1,-9436(%ebp)          #   dimension 5: 1 elements
    movl    $5,-10600(%ebp)         # local array 'v8': 5 dimensions
    movl    $8,-10596(%ebp)         #   dimension 1: 8 elements
    movl    $4,-10592(%ebp)         #   dimension 2: 4 elements
    movl    $5,-10588(%ebp)         #   dimension 3: 5 elements
    movl    $7,-10584(%ebp)         #   dimension 4: 7 elements
    movl    $1,-10580(%ebp)         #   dimension 5: 1 elements

    # function body
    movl    $100, %eax              #   0:     param  3 <- 100
    pushl   %eax                   
    leal    -10600(%ebp), %eax      #   1:     &()    t3 <- v8
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   2:     param  2 <- t3
    pushl   %eax                   
    leal    -9456(%ebp), %eax       #   3:     &()    t4 <- v7
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   4:     param  1 <- t4
    pushl   %eax                   
    leal    -9352(%ebp), %eax       #   5:     &()    t5 <- v6
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   6:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   7:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -93(%ebp)         
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  10:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $83862, %eax            #  11:     mul    t8 <- 83862, t7
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  12:     add    t9 <- t8, 55441
    movl    $55441, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  15:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -108(%ebp), %eax        #  16:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t12 <- t11, 69705
    movl    $69705, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  20:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     add    t15 <- t14, 73394
    movl    $73394, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  24:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  25:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  26:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     add    t18 <- t17, 19642
    movl    $19642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  28:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  29:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  30:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  31:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  32:     add    t22 <- v4, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -93(%ebp), %eax         #  33:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $42984, %eax            #  34:     assign v9 <- 42984
    movl    %eax, -10604(%ebp)     
    movl    $98, %eax               #  35:     param  3 <- 98
    pushl   %eax                   
    leal    -10600(%ebp), %eax      #  36:     &()    t23 <- v8
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  37:     param  2 <- t23
    pushl   %eax                   
    leal    -9456(%ebp), %eax       #  38:     &()    t24 <- v7
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     param  1 <- t24
    pushl   %eax                   
    leal    -9352(%ebp), %eax       #  40:     &()    t25 <- v6
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  41:     param  0 <- t25
    pushl   %eax                   
    call    f0                      #  42:     call   t26 <- f0
    addl    $16, %esp              
    movb    %al, -77(%ebp)         
    movl    $99, %eax               #  43:     if     99 # t26 goto 3
    movzbl  -77(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_3                 
    jmp     l_f2_4                  #  44:     goto   4
l_f2_3:
    movl    $1, %eax                #  46:     assign t27 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f2_5                  #  47:     goto   5
l_f2_4:
    movl    $0, %eax                #  49:     assign t27 <- 0
    movb    %al, -78(%ebp)         
l_f2_5:
    movzbl  -78(%ebp), %eax         #  51:     return t27
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $10592, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $33859, %eax            #   4:     if     33859 < 76999 goto 6_while_body
    movl    $76999, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    movl    $99, %eax               #   9:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #  11:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $27947, %eax            #  12:     if     27947 # 48349 goto 11
    movl    $48349, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_11              
    jmp     l_test_12               #  13:     goto   12
l_test_11:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_13               #  16:     goto   13
l_test_12:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_13:
    movzbl  -17(%ebp), %eax         #  20:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_0                #  21:     goto   0
l_test_2_if_false:
l_test_0:
l_test_16_while_cond:
    movl    $99, %eax               #  25:     if     99 > 98 goto 17_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_17_while_body   
    jmp     l_test_15               #  26:     goto   15
l_test_17_while_body:
l_test_20_while_cond:
    call    dummyBOOLfunc           #  29:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  30:     if     t2 = 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21_while_body   
    jmp     l_test_19               #  31:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  33:     goto   20_while_cond
l_test_19:
    jmp     l_test_16_while_cond    #  35:     goto   16_while_cond
l_test_15:
    movl    $100, %eax              #  37:     assign v1 <- 100
    movb    %al, v1                
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
