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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 10 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    movl    $91126, %eax            #   2:     if     91126 <= 18476 goto 2
    movl    $18476, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t5
    movb    %al, -15(%ebp)         
    call    dummyProcedure          #  11:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 10 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <char> %ebp-18 ]
    #   -11384(%ebp)  11364  [ $v1       <array 2 of <array 9 of <array 9 of <array 10 of <array 7 of <char>>>>>> %ebp-11384 ]
    #   -11388(%ebp)   4  [ $v2       <int> %ebp-11388 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $11376, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2844, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11384(%ebp)         # local array 'v1': 5 dimensions
    movl    $2,-11380(%ebp)         #   dimension 1: 2 elements
    movl    $9,-11376(%ebp)         #   dimension 2: 9 elements
    movl    $9,-11372(%ebp)         #   dimension 3: 9 elements
    movl    $10,-11368(%ebp)        #   dimension 4: 10 elements
    movl    $7,-11364(%ebp)         #   dimension 5: 7 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_2_while_body       #   4:     goto   2_while_body
l_f1_3:
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
    movl    $98, %eax               #   8:     param  1 <- 98
    pushl   %eax                   
    leal    -11384(%ebp), %eax      #   9:     &()    t4 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  11:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  12:     assign v0 <- t5
    movb    %al, -18(%ebp)         
    movl    $30463, %eax            #  13:     assign v2 <- 30463
    movl    %eax, -11388(%ebp)     

l_f1_exit:
    # epilogue
    addl    $11376, %esp            # remove locals
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
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t24      <bool> %ebp-66 ]
    #    -72(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 10 of <array 7 of <char>>>>>>> %ebp-72 ]
    #    -73(%ebp)   1  [ $t5       <char> %ebp-73 ]
    #    -74(%ebp)   1  [ $t6       <bool> %ebp-74 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 10 of <array 8 of <array 8 of <array 10 of <bool>>>>>>> %ebp+20 ]
    #    -89(%ebp)   1  [ $v4       <bool> %ebp-89 ]
    #   -11456(%ebp)  11364  [ $v5       <array 2 of <array 9 of <array 9 of <array 10 of <array 7 of <char>>>>>> %ebp-11456 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $11444, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2861, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11456(%ebp)         # local array 'v5': 5 dimensions
    movl    $2,-11452(%ebp)         #   dimension 1: 2 elements
    movl    $9,-11448(%ebp)         #   dimension 2: 9 elements
    movl    $9,-11444(%ebp)         #   dimension 3: 9 elements
    movl    $10,-11440(%ebp)        #   dimension 4: 10 elements
    movl    $7,-11436(%ebp)         #   dimension 5: 7 elements

    # function body
    movl    $98, %eax               #   0:     param  1 <- 98
    pushl   %eax                   
    leal    -11456(%ebp), %eax      #   1:     &()    t4 <- v5
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   2:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   3:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -73(%ebp)         
    movzbl  -73(%ebp), %eax         #   4:     if     t5 > 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   5:     goto   2
l_f2_1:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -74(%ebp)         
l_f2_3:
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $14724, %eax            #  15:     mul    t8 <- 14724, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  16:     add    t9 <- t8, 78314
    movl    $78314, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  20:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t12 <- t11, 48553
    movl    $48553, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t14, 70083
    movl    $70083, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  29:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t18 <- t17, 60514
    movl    $60514, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  33:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  34:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  35:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  36:     add    t22 <- v3, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -74(%ebp), %eax         #  37:     assign @t22 <- t6
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $1, %eax                #  38:     assign t23 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_8                  #  39:     goto   8
    movl    $0, %eax                #  40:     assign t23 <- 0
    movb    %al, -65(%ebp)         
l_f2_8:
    movzbl  -65(%ebp), %eax         #  42:     assign v4 <- t23
    movb    %al, -89(%ebp)         
l_f2_11_while_cond:
    call    dummyBOOLfunc           #  44:     call   t24 <- dummyBOOLfunc
    movb    %al, -66(%ebp)         
    movzbl  -66(%ebp), %eax         #  45:     if     t24 = 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  46:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  48:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $11444, %esp            # remove locals
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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_5_while_cond:
    movl    $4873, %eax             #   5:     mul    t0 <- 4873, 88604
    movl    $88604, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     div    t1 <- t0, 86368
    movl    $86368, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     mul    t2 <- t1, 1920
    movl    $1920, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     div    t3 <- t2, 82519
    movl    $82519, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     if     t3 > 45668 goto 6_while_body
    movl    $45668, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #  10:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  12:     goto   5_while_cond
l_test_4:
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
