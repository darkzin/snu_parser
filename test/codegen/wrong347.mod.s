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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t5       <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t6       <bool> %ebp-78 ]
    #    -79(%ebp)   1  [ $t7       <char> %ebp-79 ]
    #    -80(%ebp)   1  [ $t8       <char> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 9 of <array 10 of <array 2 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 6 of <array 6 of <array 5 of <array 10 of <char>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $v3       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $v4       <char> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -77(%ebp)         
l_f0_3:
    movzbl  -77(%ebp), %eax         #   9:     return t5
    jmp     l_f0_exit              
    movl    $0, %eax                #  10:     return 0
    jmp     l_f0_exit              
l_f0_14_while_cond:
    movl    $98, %eax               #  12:     if     98 < 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  13:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  15:     goto   14_while_cond
l_f0_13:
    movl    $55576, %eax            #  17:     if     55576 <= 34406 goto 18_if_true
    movl    $34406, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  18:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  20:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $28724, %eax            #  23:     if     28724 <= 85907 goto 22
    movl    $85907, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_22                
    jmp     l_f0_23                 #  24:     goto   23
l_f0_22:
    movl    $1, %eax                #  26:     assign t6 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f0_24                 #  27:     goto   24
l_f0_23:
    movl    $0, %eax                #  29:     assign t6 <- 0
    movb    %al, -78(%ebp)         
l_f0_24:
    movzbl  -78(%ebp), %eax         #  31:     assign v2 <- t6
    movb    %al, -85(%ebp)         
    call    dummyCHARfunc           #  32:     call   t7 <- dummyCHARfunc
    movb    %al, -79(%ebp)         
    movl    $71112, %eax            #  33:     assign v3 <- 71112
    movl    %eax, -92(%ebp)        
    movl    $89295, %eax            #  34:     assign v3 <- 89295
    movl    %eax, -92(%ebp)        
    jmp     l_f0_9                  #  35:     goto   9
l_f0_9:
    call    dummyCHARfunc           #  37:     call   t8 <- dummyCHARfunc
    movb    %al, -80(%ebp)         
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $97220, %eax            #  41:     mul    t10 <- 97220, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $85985, %eax            #  42:     add    t11 <- 85985, 37253
    movl    $37253, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  43:     add    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  44:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  46:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  47:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  48:     add    t15 <- t14, 77067
    movl    $77067, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  50:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  51:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  52:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  53:     add    t18 <- t17, 38244
    movl    $38244, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  54:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  55:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  56:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  57:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  58:     add    t21 <- t20, 91197
    movl    $91197, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  59:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  60:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  61:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  62:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  63:     add    t25 <- v0, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -80(%ebp), %eax         #  64:     assign @t25 <- t8
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 1 of <array 10 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 3 of <array 8 of <array 7 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -16(%ebp)   1  [ $v4       <char> %ebp-16 ]

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
    jmp     l_f1_4                  #   0:     goto   4
    jmp     l_f1_4                  #   1:     goto   4
    jmp     l_f1_4                  #   2:     goto   4
l_f1_4:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $0, %eax                #   8:     if     0 # t5 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   9:     goto   2_if_false
l_f1_1_if_true:
    movl    $99, %eax               #  11:     return 99
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  16:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  17:     assign v4 <- 98
    movb    %al, -16(%ebp)         

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
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t6       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t7       <ptr(4) to <array 9 of <array 3 of <array 8 of <array 7 of <array 5 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <ptr(4) to <array 2 of <array 1 of <array 10 of <array 8 of <array 8 of <int>>>>>>> %ebp-56 ]
    #    -57(%ebp)   1  [ $t9       <char> %ebp-57 ]
    #    -64(%ebp)   4  [ $v0       <int> %ebp-64 ]
    #   -5208(%ebp)  5144  [ $v1       <array 2 of <array 1 of <array 10 of <array 8 of <array 8 of <int>>>>>> %ebp-5208 ]
    #   -35472(%ebp)  30264  [ $v2       <array 9 of <array 3 of <array 8 of <array 7 of <array 5 of <int>>>>>> %ebp-35472 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $35460, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8865, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5208(%ebp)          # local array 'v1': 5 dimensions
    movl    $2,-5204(%ebp)          #   dimension 1: 2 elements
    movl    $1,-5200(%ebp)          #   dimension 2: 1 elements
    movl    $10,-5196(%ebp)         #   dimension 3: 10 elements
    movl    $8,-5192(%ebp)          #   dimension 4: 8 elements
    movl    $8,-5188(%ebp)          #   dimension 5: 8 elements
    movl    $5,-35472(%ebp)         # local array 'v2': 5 dimensions
    movl    $9,-35468(%ebp)         #   dimension 1: 9 elements
    movl    $3,-35464(%ebp)         #   dimension 2: 3 elements
    movl    $8,-35460(%ebp)         #   dimension 3: 8 elements
    movl    $7,-35456(%ebp)         #   dimension 4: 7 elements
    movl    $5,-35452(%ebp)         #   dimension 5: 5 elements

    # function body
    movl    $23130, %eax            #   0:     mul    t5 <- 23130, 470
    movl    $470, %ebx             
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     assign v0 <- t5
    movl    %eax, -64(%ebp)        
    movl    $1, %eax                #   2:     if     1 = 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -45(%ebp)         
l_f2_4:
    movzbl  -45(%ebp), %eax         #  10:     param  3 <- t6
    pushl   %eax                   
    movl    $1, %eax                #  11:     param  2 <- 1
    pushl   %eax                   
    leal    -35472(%ebp), %eax      #  12:     &()    t7 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  13:     param  1 <- t7
    pushl   %eax                   
    leal    -5208(%ebp), %eax       #  14:     &()    t8 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  15:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  16:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  17:     return t9
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $93156, %eax            #  19:     div    t10 <- 93156, 91857
    movl    $91857, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     mul    t11 <- t10, 12076
    movl    $12076, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     div    t12 <- t11, 23462
    movl    $23462, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     mul    t13 <- t12, 85543
    movl    $85543, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     div    t14 <- t13, 10103
    movl    $10103, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t15 <- t14, 90823
    movl    $90823, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $5996, %eax             #  25:     if     5996 <= t15 goto 8_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #  26:     goto   6
l_f2_8_while_body:
    call    dummyBOOLfunc           #  28:     call   t16 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    jmp     l_f2_7_while_cond       #  29:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $35460, %esp            # remove locals
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
    movl    $4647, %eax             #   0:     add    t0 <- 4647, 58071
    movl    $58071, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 92259
    movl    $92259, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 14273
    movl    $14273, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 76776
    movl    $76776, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t3
    movl    %eax, v0               
    movl    $100, %eax              #   5:     assign v1 <- 100
    movb    %al, v1                
    call    dummyINTfunc            #   6:     call   t4 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
