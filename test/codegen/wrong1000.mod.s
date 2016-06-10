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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 9 of <array 9 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -18(%ebp)   1  [ $v4       <char> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   2:     assign v4 <- 99
    movb    %al, -18(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 3 of <array 5 of <array 5 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    movl    $13797, %eax            #   1:     add    t3 <- 13797, 26051
    movl    $26051, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 11628
    movl    $11628, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t5 <- t4, 83860
    movl    $83860, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t5 < 4337 goto 2_while_body
    movl    $4337, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_6_while_body       #  10:     goto   6_while_body
    jmp     l_f1_6_while_body       #  11:     goto   6_while_body
    jmp     l_f1_4                  #  12:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  14:     goto   5_while_cond
l_f1_4:
    call    dummyINTfunc            #  16:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <ptr(4) to <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t31      <bool> %ebp-101 ]
    #   -108(%ebp)   4  [ $t4       <ptr(4) to <array 1 of <array 2 of <array 9 of <array 9 of <array 1 of <int>>>>>>> %ebp-108 ]
    #   -109(%ebp)   1  [ $t5       <char> %ebp-109 ]
    #   -116(%ebp)   4  [ $t6       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <ptr(4) to <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>>> %ebp-128 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 8 of <array 7 of <array 8 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 1 of <array 7 of <array 4 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 10 of <array 9 of <array 2 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -800(%ebp)  672  [ $v5       <array 1 of <array 2 of <array 9 of <array 9 of <array 1 of <int>>>>>> %ebp-800 ]
    #   -6584(%ebp)  5784  [ $v6       <array 1 of <array 2 of <array 8 of <array 9 of <array 10 of <int>>>>>> %ebp-6584 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6572, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1643, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-800(%ebp)           # local array 'v5': 5 dimensions
    movl    $1,-796(%ebp)           #   dimension 1: 1 elements
    movl    $2,-792(%ebp)           #   dimension 2: 2 elements
    movl    $9,-788(%ebp)           #   dimension 3: 9 elements
    movl    $9,-784(%ebp)           #   dimension 4: 9 elements
    movl    $1,-780(%ebp)           #   dimension 5: 1 elements
    movl    $5,-6584(%ebp)          # local array 'v6': 5 dimensions
    movl    $1,-6580(%ebp)          #   dimension 1: 1 elements
    movl    $2,-6576(%ebp)          #   dimension 2: 2 elements
    movl    $8,-6572(%ebp)          #   dimension 3: 8 elements
    movl    $9,-6568(%ebp)          #   dimension 4: 9 elements
    movl    $10,-6564(%ebp)         #   dimension 5: 10 elements

    # function body
l_f2_1_while_cond:
    movl    $0, %eax                #   1:     param  2 <- 0
    pushl   %eax                   
    leal    -6584(%ebp), %eax       #   2:     &()    t3 <- v6
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   3:     param  1 <- t3
    pushl   %eax                   
    leal    -800(%ebp), %eax        #   4:     &()    t4 <- v5
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   5:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   6:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -109(%ebp)        
    movl    $97, %eax               #   7:     if     97 < t5 goto 2_while_body
    movzbl  -109(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    movl    $37015, %eax            #  12:     sub    t6 <- 37015, 39199
    movl    $39199, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  13:     sub    t7 <- t6, 11140
    movl    $11140, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  14:     sub    t8 <- t7, 21565
    movl    $21565, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    leal    -6584(%ebp), %eax       #  15:     &()    t9 <- v6
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    leal    -6584(%ebp), %eax       #  17:     &()    t10 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  19:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $88466, %eax            #  20:     mul    t12 <- 88466, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t13 <- t12, 47985
    movl    $47985, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    leal    -6584(%ebp), %eax       #  23:     &()    t14 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     add    t17 <- t16, 88338
    movl    $88338, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    leal    -6584(%ebp), %eax       #  29:     &()    t18 <- v6
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  31:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t21 <- t20, 44611
    movl    $44611, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    leal    -6584(%ebp), %eax       #  35:     &()    t22 <- v6
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  36:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  37:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  38:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     add    t25 <- t24, 44567
    movl    $44567, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -6584(%ebp), %eax       #  41:     &()    t27 <- v6
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  43:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  44:     add    t29 <- t26, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -128(%ebp), %eax        #  45:     add    t30 <- t9, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -124(%ebp), %eax        #  46:     assign @t30 <- t8
    movl    -100(%ebp), %edi       
    movl    %eax, (%edi)           
    call    dummyBOOLfunc           #  47:     call   t31 <- dummyBOOLfunc
    movb    %al, -101(%ebp)        

l_f2_exit:
    # epilogue
    addl    $6572, %esp             # remove locals
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
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
    call    dummyINTfunc            #   2:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_6_while_cond:
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_5:
    movl    $97, %eax               #   7:     if     97 < 98 goto 9
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_9               
    jmp     l_test_10               #   8:     goto   10
l_test_9:
    movl    $1, %eax                #  10:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_11               #  11:     goto   11
l_test_10:
    movl    $0, %eax                #  13:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_11:
    movzbl  -17(%ebp), %eax         #  15:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #  21:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  22:     if     t2 < 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_if_true      
    jmp     l_test_17_if_false      #  23:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  25:     goto   15
l_test_17_if_false:
l_test_15:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
