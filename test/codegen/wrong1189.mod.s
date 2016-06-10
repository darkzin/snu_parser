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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp+8 ]
    #    -18(%ebp)   1  [ $v2       <bool> %ebp-18 ]

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
    leal    _str_1, %eax            #   0:     &()    t4 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t5 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_3_while_body       #   6:     goto   3_while_body
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
    movl    $1, %eax                #   9:     assign v2 <- 1
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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t4       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t5       <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t6       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #   -188735184(%ebp)  188735064  [ $v3       <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>> %ebp-188735184 ]
    #   -188735188(%ebp)   4  [ $v4       <int> %ebp-188735188 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $188735176, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $47183794, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-188735184(%ebp)     # local array 'v3': 5 dimensions
    movl    $71,-188735180(%ebp)    #   dimension 1: 71 elements
    movl    $71,-188735176(%ebp)    #   dimension 2: 71 elements
    movl    $13,-188735172(%ebp)    #   dimension 3: 13 elements
    movl    $8,-188735168(%ebp)     #   dimension 4: 8 elements
    movl    $90,-188735164(%ebp)    #   dimension 5: 90 elements

    # function body
    movl    $100, %eax              #   0:     if     100 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $100, %eax              #   4:     if     100 >= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    call    dummyBOOLfunc           #   9:     call   t4 <- dummyBOOLfunc
    movb    %al, -97(%ebp)         
    leal    -188735184(%ebp), %eax  #  10:     &()    t5 <- v3
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  11:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  12:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -105(%ebp)        
    movl    $97, %eax               #  13:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_12_while_cond:
    jmp     l_f1_13_while_body      #  18:     goto   13_while_body
    jmp     l_f1_11                 #  19:     goto   11
l_f1_13_while_body:
    call    ReadInt                 #  21:     call   t7 <- ReadInt
    movl    %eax, -112(%ebp)       
    jmp     l_f1_12_while_cond      #  22:     goto   12_while_cond
l_f1_11:
    movl    $86102, %eax            #  24:     if     86102 = 95566 goto 17_if_true
    movl    $95566, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  25:     goto   18_if_false
l_f1_17_if_true:
    leal    -188735184(%ebp), %eax  #  27:     &()    t8 <- v3
    movl    %eax, -116(%ebp)       
    movl    $26529, %eax            #  28:     add    t9 <- 26529, 67021
    movl    $67021, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    leal    -188735184(%ebp), %eax  #  30:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  32:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -120(%ebp), %eax        #  33:     mul    t12 <- t9, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t13 <- t12, 71553
    movl    $71553, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    leal    -188735184(%ebp), %eax  #  36:     &()    t14 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  38:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  39:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  40:     add    t17 <- t16, 28265
    movl    $28265, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  41:     param  1 <- 4
    pushl   %eax                   
    leal    -188735184(%ebp), %eax  #  42:     &()    t18 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  43:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  44:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  45:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  46:     add    t21 <- t20, 37997
    movl    $37997, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  47:     param  1 <- 5
    pushl   %eax                   
    leal    -188735184(%ebp), %eax  #  48:     &()    t22 <- v3
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  49:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  50:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  51:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  52:     add    t25 <- t24, 90905
    movl    $90905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  53:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -188735184(%ebp), %eax  #  54:     &()    t27 <- v3
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  55:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  56:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  57:     add    t29 <- t26, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -116(%ebp), %eax        #  58:     add    t30 <- t8, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $74334, %eax            #  59:     assign @t30 <- 74334
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_16                 #  60:     goto   16
l_f1_18_if_false:
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $188735176, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 74 of <array 68 of <array 31 of <array 95 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   -188735088(%ebp)  188735064  [ $v5       <array 71 of <array 71 of <array 13 of <array 8 of <array 90 of <int>>>>>> %ebp-188735088 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $188735076, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $47183769, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-188735088(%ebp)     # local array 'v5': 5 dimensions
    movl    $71,-188735084(%ebp)    #   dimension 1: 71 elements
    movl    $71,-188735080(%ebp)    #   dimension 2: 71 elements
    movl    $13,-188735076(%ebp)    #   dimension 3: 13 elements
    movl    $8,-188735072(%ebp)     #   dimension 4: 8 elements
    movl    $90,-188735068(%ebp)    #   dimension 5: 90 elements

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_2                  #   2:     goto   2
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #  10:     assign v4 <- t4
    movb    %al, 20(%ebp)          
    leal    -188735088(%ebp), %eax  #  11:     &()    t5 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  13:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $188735076, %esp        # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $6192, %eax             #   1:     div    t1 <- 6192, t0
    movl    -16(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_test_7_while_cond:
    movl    $63520, %eax            #   5:     if     63520 = 20695 goto 8_while_body
    movl    $20695, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #   6:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   8:     goto   7_while_cond
l_test_6:
    jmp     l_test_2                #  10:     goto   2
l_test_2:
l_test_11_while_cond:
    jmp     l_test_10               #  13:     goto   10
l_test_14_while_cond:
    jmp     l_test_13               #  15:     goto   13
    jmp     l_test_14_while_cond    #  16:     goto   14_while_cond
l_test_13:
    movl    $97, %eax               #  18:     assign v1 <- 97
    movb    %al, v1                
    movl    $100, %eax              #  19:     if     100 > 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  20:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  22:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_11_while_cond    #  25:     goto   11_while_cond
l_test_10:
    call    dummyCHARfunc           #  27:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
