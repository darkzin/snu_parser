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
    #    -13(%ebp)   1  [ $t28      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t29      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 4 of <array 3 of <array 2 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 5 of <array 9 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 6 of <array 1 of <array 8 of <array 9 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
l_f0_1_if_true:
    movl    $60872, %eax            #   2:     return 60872
    jmp     l_f0_exit              
    jmp     l_f0_7                  #   3:     goto   7
l_f0_7:
    call    dummyProcedure          #   5:     call   dummyProcedure
l_f0_12_while_cond:
    jmp     l_f0_11                 #   7:     goto   11
    jmp     l_f0_12_while_cond      #   8:     goto   12_while_cond
l_f0_11:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  12:     call   t28 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #  13:     call   t29 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t28      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t29      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t30      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t31      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t32      <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp+16 ]

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
    movl    $15332, %eax            #   0:     mul    t28 <- 15332, 72570
    movl    $72570, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t29 <- t28, 86241
    movl    $86241, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t30 <- t29, 67897
    movl    $67897, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t31 <- t30, 9217
    movl    $9217, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t31
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   6:     goto   3_while_body
    jmp     l_f1_3_while_body       #   7:     goto   3_while_body
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_1:
    call    ReadInt                 #  12:     call   t32 <- ReadInt
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t28      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t29      <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t30      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t31      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t32      <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t33      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t34      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t35      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t36      <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 2 of <array 4 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 7 of <array 6 of <array 7 of <array 8 of <int>>>>>>> %ebp+20 ]
    #   -51912(%ebp)  51864  [ $v4       <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>> %ebp-51912 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $51900, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12975, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-51912(%ebp)         # local array 'v4': 5 dimensions
    movl    $8,-51908(%ebp)         #   dimension 1: 8 elements
    movl    $9,-51904(%ebp)         #   dimension 2: 9 elements
    movl    $4,-51900(%ebp)         #   dimension 3: 4 elements
    movl    $5,-51896(%ebp)         #   dimension 4: 5 elements
    movl    $9,-51892(%ebp)         #   dimension 5: 9 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t28 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    leal    -51912(%ebp), %eax      #   2:     &()    t29 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t29
    pushl   %eax                   
    movl    $98, %eax               #   4:     param  1 <- 98
    pushl   %eax                   
    movl    $210, %eax              #   5:     param  0 <- 210
    pushl   %eax                   
    call    f1                      #   6:     call   t30 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     if     t30 >= 49241 goto 3_while_body
    movl    $49241, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_while_body:
    movl    $23784, %eax            #  10:     param  0 <- 23784
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  12:     call   t31 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
    leal    -51912(%ebp), %eax      #  15:     &()    t32 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     param  2 <- t32
    pushl   %eax                   
    movl    $99, %eax               #  17:     param  1 <- 99
    pushl   %eax                   
    call    dummyINTfunc            #  18:     call   t33 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    $41690, %eax            #  19:     add    t34 <- 41690, t33
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     add    t35 <- t34, 59218
    movl    $59218, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     param  0 <- t35
    pushl   %eax                   
    call    f1                      #  22:     call   t36 <- f1
    addl    $12, %esp              
    movl    %eax, -48(%ebp)        

l_f2_exit:
    # epilogue
    addl    $51900, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $112, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $97, %eax               #   2:     if     97 <= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    leal    v0, %eax                #   5:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  2 <- t1
    pushl   %eax                   
    movl    $100, %eax              #   7:     param  1 <- 100
    pushl   %eax                   
    movl    $86175, %eax            #   8:     param  0 <- 86175
    pushl   %eax                   
    call    f1                      #   9:     call   t2 <- f1
    addl    $12, %esp              
    movl    %eax, -64(%ebp)        
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
    movl    $1, %eax                #  12:     if     1 # 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  13:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  15:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_6                #  18:     goto   6
l_test_6:
    jmp     l_test_2                #  20:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_19_if_false      #  23:     goto   19_if_false
l_test_21_while_cond:
    jmp     l_test_20               #  25:     goto   20
    jmp     l_test_21_while_cond    #  26:     goto   21_while_cond
l_test_20:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  29:     call   t3 <- dummyBOOLfunc
    movb    %al, -97(%ebp)         
    jmp     l_test_27_if_false      #  30:     goto   27_if_false
    jmp     l_test_25               #  31:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_17               #  34:     goto   17
l_test_19_if_false:
l_test_17:
l_test_29_while_cond:
    jmp     l_test_28               #  38:     goto   28
    leal    v0, %eax                #  39:     &()    t4 <- v0
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  40:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  41:     &()    t5 <- v0
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  42:     param  0 <- t5
    pushl   %eax                   
    call    DIM                     #  43:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $85859, %eax            #  44:     mul    t7 <- 85859, t6
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    $57765, %eax            #  45:     sub    t8 <- 57765, 80049
    movl    $80049, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  46:     add    t9 <- t8, 45011
    movl    $45011, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    -116(%ebp), %eax        #  47:     add    t10 <- t7, t9
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  48:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  49:     &()    t11 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  50:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  51:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  52:     mul    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  53:     add    t14 <- t13, 45451
    movl    $45451, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  54:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  55:     &()    t15 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  56:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  57:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  58:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  59:     add    t18 <- t17, 5925
    movl    $5925, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  60:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  61:     &()    t19 <- v0
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  62:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  63:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  64:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  65:     add    t22 <- t21, 25334
    movl    $25334, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  66:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    v0, %eax                #  67:     &()    t24 <- v0
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  68:     param  0 <- t24
    pushl   %eax                   
    call    DOFS                    #  69:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  70:     add    t26 <- t23, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -104(%ebp), %eax        #  71:     add    t27 <- t4, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $22689, %eax            #  72:     assign @t27 <- 22689
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_test_29_while_cond    #  73:     goto   29_while_cond
l_test_28:

l_test_exit:
    # epilogue
    addl    $112, %esp              # remove locals
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
v0:                                 # <array 8 of <array 9 of <array 4 of <array 5 of <array 9 of <int>>>>>>
    .long    5
    .long    8
    .long    9
    .long    4
    .long    5
    .long    9
    .skip 51840
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
