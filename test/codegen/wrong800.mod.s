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
    #    -16(%ebp)   4  [ $t33      <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 4 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 6 of <array 10 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -17(%ebp)   1  [ $v4       <bool> %ebp-17 ]

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
    call    dummyINTfunc            #   0:     call   t33 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    movl    $0, %eax                #   2:     assign v4 <- 0
    movb    %al, -17(%ebp)         
l_f0_6_while_cond:
    jmp     l_f0_5                  #   4:     goto   5
    jmp     l_f0_6_while_cond       #   5:     goto   6_while_cond
l_f0_5:
    movl    $2227, %eax             #   7:     if     2227 >= 98811 goto 9_if_true
    movl    $98811, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_1                  #  13:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_14_if_false        #  16:     goto   14_if_false
    jmp     l_f0_15                 #  17:     goto   15
l_f0_15:
    movl    $97, %eax               #  19:     return 97
    jmp     l_f0_exit              
    movl    $98, %eax               #  20:     assign v3 <- 98
    movb    %al, 16(%ebp)          
    jmp     l_f0_12                 #  21:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -16(%ebp)   4  [ $t33      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t34      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t35      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t36      <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 2 of <array 4 of <array 4 of <array 7 of <char>>>>>>> %ebp+16 ]

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
    movl    $4418, %eax             #   0:     sub    t33 <- 4418, 55968
    movl    $55968, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t34 <- t33, 65070
    movl    $65070, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t34
    movl    %eax, 8(%ebp)          
    call    dummyBOOLfunc           #   3:     call   t35 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   4:     call   t36 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

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
    #    -16(%ebp)   4  [ $t33      <ptr(4) to <array 1 of <array 10 of <array 6 of <array 10 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t34      <ptr(4) to <array 5 of <array 4 of <array 10 of <array 4 of <array 8 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t35      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t36      <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v1       <char> %ebp-23 ]
    #   -6448(%ebp)  6424  [ $v2       <array 5 of <array 4 of <array 10 of <array 4 of <array 8 of <bool>>>>>> %ebp-6448 ]
    #   -9472(%ebp)  3024  [ $v3       <array 1 of <array 10 of <array 6 of <array 10 of <array 5 of <char>>>>>> %ebp-9472 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9460, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2365, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6448(%ebp)          # local array 'v2': 5 dimensions
    movl    $5,-6444(%ebp)          #   dimension 1: 5 elements
    movl    $4,-6440(%ebp)          #   dimension 2: 4 elements
    movl    $10,-6436(%ebp)         #   dimension 3: 10 elements
    movl    $4,-6432(%ebp)          #   dimension 4: 4 elements
    movl    $8,-6428(%ebp)          #   dimension 5: 8 elements
    movl    $5,-9472(%ebp)          # local array 'v3': 5 dimensions
    movl    $1,-9468(%ebp)          #   dimension 1: 1 elements
    movl    $10,-9464(%ebp)         #   dimension 2: 10 elements
    movl    $6,-9460(%ebp)          #   dimension 3: 6 elements
    movl    $10,-9456(%ebp)         #   dimension 4: 10 elements
    movl    $5,-9452(%ebp)          #   dimension 5: 5 elements

    # function body
    movl    $98, %eax               #   0:     param  2 <- 98
    pushl   %eax                   
    leal    -9472(%ebp), %eax       #   1:     &()    t33 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t33
    pushl   %eax                   
    leal    -6448(%ebp), %eax       #   3:     &()    t34 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t34
    pushl   %eax                   
    call    f0                      #   5:     call   t35 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     assign v1 <- t35
    movb    %al, -23(%ebp)         
    call    dummyBOOLfunc           #   7:     call   t36 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $9460, %esp             # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <ptr(4) to <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <ptr(4) to <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <ptr(4) to <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <ptr(4) to <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t31      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t32      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 2 of <array 4 of <array 4 of <array 7 of <char>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>> %ebp-128 ]
    #   -132(%ebp)   4  [ $t6       <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t7       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t9       <int> %ebp-144 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $132, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $33, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $84715, %eax            #   0:     div    t0 <- 84715, 34733
    movl    $34733, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 17416
    movl    $17416, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 65679
    movl    $65679, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   3:     sub    t3 <- t2, 69151
    movl    $69151, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   4:     assign v0 <- t3
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   6:     goto   3_while_body
    jmp     l_test_1                #   7:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
    leal    v2, %eax                #  11:     &()    t4 <- v2
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  12:     param  2 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  13:     &()    t5 <- v1
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  14:     param  1 <- t5
    pushl   %eax                   
    movl    $62508, %eax            #  15:     mul    t6 <- 62508, 44879
    movl    $44879, %ebx           
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  16:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  17:     call   t7 <- f1
    addl    $12, %esp              
    movl    %eax, -136(%ebp)       
    leal    v1, %eax                #  18:     &()    t8 <- v1
    movl    %eax, -140(%ebp)       
    movl    $57902, %eax            #  19:     sub    t9 <- 57902, 89856
    movl    $89856, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  20:     sub    t10 <- t9, 82005
    movl    $82005, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t11 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $65133, %eax            #  26:     add    t14 <- 65133, 77080
    movl    $77080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t15 <- t13, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  29:     &()    t16 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  31:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t18 <- t15, t17
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t19 <- t18, 54533
    movl    $54533, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  35:     &()    t20 <- v1
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  36:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  37:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -60(%ebp), %eax         #  38:     mul    t22 <- t19, t21
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  39:     add    t23 <- t22, 60303
    movl    $60303, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  41:     &()    t24 <- v1
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     param  0 <- t24
    pushl   %eax                   
    call    DIM                     #  43:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  44:     mul    t26 <- t23, t25
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  45:     add    t27 <- t26, 649
    movl    $649, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  46:     mul    t28 <- t27, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    leal    v1, %eax                #  47:     &()    t29 <- v1
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  48:     param  0 <- t29
    pushl   %eax                   
    call    DOFS                    #  49:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -112(%ebp)       
    movl    -100(%ebp), %eax        #  50:     add    t31 <- t28, t30
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -140(%ebp), %eax        #  51:     add    t32 <- t8, t31
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $29785, %eax            #  52:     assign @t32 <- 29785
    movl    -120(%ebp), %edi       
    movl    %eax, (%edi)           
    movl    $99, %eax               #  53:     assign v3 <- 99
    movb    %al, v3                

l_test_exit:
    # epilogue
    addl    $132, %esp              # remove locals
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
v1:                                 # <array 5 of <array 10 of <array 10 of <array 9 of <array 1 of <int>>>>>>
    .long    5
    .long    5
    .long   10
    .long   10
    .long    9
    .long    1
    .skip 18000
v2:                                 # <array 4 of <array 2 of <array 4 of <array 4 of <array 7 of <char>>>>>>
    .long    5
    .long    4
    .long    2
    .long    4
    .long    4
    .long    7
    .skip  896
v3:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
