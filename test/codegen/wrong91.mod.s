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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 1 of <array 10 of <array 8 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    movl    $97, %eax               #   0:     assign v4 <- 97
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_3_while_cond:
    movl    $79423, %eax            #   3:     if     79423 >= 86100 goto 6_if_true
    movl    $86100, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $98, %eax               #   9:     if     98 < 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  10:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_3_while_cond       #  15:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 1 of <array 1 of <array 10 of <array 8 of <array 1 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t17      <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t18      <char> %ebp-42 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t29      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t30      <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t31      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t32      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t33      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t34      <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t35      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t36      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t37      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t38      <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t39      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t40      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t41      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t42      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t43      <ptr(4) to <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>>> %ebp-144 ]
    #   -148(%ebp)   4  [ $t44      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t45      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t46      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t8       <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t9       <int> %ebp-164 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -268(%ebp)  104  [ $v3       <array 1 of <array 1 of <array 10 of <array 8 of <array 1 of <bool>>>>>> %ebp-268 ]
    #   -25492(%ebp)  25224  [ $v4       <array 5 of <array 7 of <array 4 of <array 5 of <array 9 of <int>>>>>> %ebp-25492 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $25480, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6370, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-268(%ebp)           # local array 'v3': 5 dimensions
    movl    $1,-264(%ebp)           #   dimension 1: 1 elements
    movl    $1,-260(%ebp)           #   dimension 2: 1 elements
    movl    $10,-256(%ebp)          #   dimension 3: 10 elements
    movl    $8,-252(%ebp)           #   dimension 4: 8 elements
    movl    $1,-248(%ebp)           #   dimension 5: 1 elements
    movl    $5,-25492(%ebp)         # local array 'v4': 5 dimensions
    movl    $5,-25488(%ebp)         #   dimension 1: 5 elements
    movl    $7,-25484(%ebp)         #   dimension 2: 7 elements
    movl    $4,-25480(%ebp)         #   dimension 3: 4 elements
    movl    $5,-25476(%ebp)         #   dimension 4: 5 elements
    movl    $9,-25472(%ebp)         #   dimension 5: 9 elements

    # function body
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #   1:     add    t9 <- t8, 14783
    movl    $14783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    -164(%ebp), %eax        #   2:     sub    t10 <- t9, 54210
    movl    $54210, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t11 <- t10, 44349
    movl    $44349, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t12 <- t11, 1257
    movl    $1257, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t13 <- t12, 50837
    movl    $50837, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     assign v0 <- t13
    movl    %eax, 8(%ebp)          
    leal    -25492(%ebp), %eax      #   7:     &()    t14 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     param  3 <- t14
    pushl   %eax                   
    movl    $99, %eax               #   9:     if     99 >= 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2                 
    jmp     l_f1_3                  #  10:     goto   3
l_f1_2:
    movl    $1, %eax                #  12:     assign t15 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_4                  #  13:     goto   4
l_f1_3:
    movl    $0, %eax                #  15:     assign t15 <- 0
    movb    %al, -33(%ebp)         
l_f1_4:
    movzbl  -33(%ebp), %eax         #  17:     param  2 <- t15
    pushl   %eax                   
    leal    -268(%ebp), %eax        #  18:     &()    t16 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     param  1 <- t16
    pushl   %eax                   
    jmp     l_f1_9                  #  20:     goto   9
    jmp     l_f1_9                  #  21:     goto   9
l_f1_9:
    movl    $1, %eax                #  23:     assign t17 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f1_8                  #  24:     goto   8
    movl    $0, %eax                #  25:     assign t17 <- 0
    movb    %al, -41(%ebp)         
l_f1_8:
    movzbl  -41(%ebp), %eax         #  27:     param  0 <- t17
    pushl   %eax                   
    call    f0                      #  28:     call   t18 <- f0
    addl    $16, %esp              
    movb    %al, -42(%ebp)         
    movzbl  -42(%ebp), %eax         #  29:     return t18
    jmp     l_f1_exit              
    movl    $15421, %eax            #  30:     div    t19 <- 15421, 47214
    movl    $47214, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    leal    -25492(%ebp), %eax      #  31:     &()    t20 <- v4
    movl    %eax, -52(%ebp)        
    movl    $2, %eax                #  32:     param  1 <- 2
    pushl   %eax                   
    leal    -25492(%ebp), %eax      #  33:     &()    t21 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  34:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  35:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $42503, %eax            #  36:     mul    t23 <- 42503, t22
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $4115, %eax             #  37:     div    t24 <- 4115, 9897
    movl    $9897, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  38:     div    t25 <- t24, 37750
    movl    $37750, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  39:     mul    t26 <- t25, 20271
    movl    $20271, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  40:     mul    t27 <- t26, 19225
    movl    $19225, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  41:     mul    t28 <- t27, 99280
    movl    $99280, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -64(%ebp), %eax         #  42:     add    t29 <- t23, t28
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    leal    -25492(%ebp), %eax      #  44:     &()    t30 <- v4
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  45:     param  0 <- t30
    pushl   %eax                   
    call    DIM                     #  46:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  47:     mul    t32 <- t29, t31
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  48:     add    t33 <- t32, 87199
    movl    $87199, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $4, %eax                #  49:     param  1 <- 4
    pushl   %eax                   
    leal    -25492(%ebp), %eax      #  50:     &()    t34 <- v4
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  51:     param  0 <- t34
    pushl   %eax                   
    call    DIM                     #  52:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -104(%ebp), %eax        #  53:     mul    t36 <- t33, t35
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  54:     add    t37 <- t36, 86859
    movl    $86859, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $5, %eax                #  55:     param  1 <- 5
    pushl   %eax                   
    leal    -25492(%ebp), %eax      #  56:     &()    t38 <- v4
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  57:     param  0 <- t38
    pushl   %eax                   
    call    DIM                     #  58:     call   t39 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  59:     mul    t40 <- t37, t39
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  60:     add    t41 <- t40, 13516
    movl    $13516, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    -136(%ebp), %eax        #  61:     mul    t42 <- t41, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -140(%ebp)       
    leal    -25492(%ebp), %eax      #  62:     &()    t43 <- v4
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  63:     param  0 <- t43
    pushl   %eax                   
    call    DOFS                    #  64:     call   t44 <- DOFS
    addl    $4, %esp               
    movl    %eax, -148(%ebp)       
    movl    -140(%ebp), %eax        #  65:     add    t45 <- t42, t44
    movl    -148(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -152(%ebp)       
    movl    -52(%ebp), %eax         #  66:     add    t46 <- t20, t45
    movl    -152(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    -48(%ebp), %eax         #  67:     assign @t46 <- t19
    movl    -156(%ebp), %edi       
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $25480, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 5 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     assign v0 <- t8
    movb    %al, 8(%ebp)           
    call    ReadInt                 #   2:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $25912, %eax            #   3:     div    t10 <- 25912, 86944
    movl    $86944, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     assign v3 <- t10
    movl    %eax, 20(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 5 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 7 of <array 2 of <array 5 of <array 5 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t5       <bool> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    movl    $47172, %eax            #   1:     param  3 <- 47172
    pushl   %eax                   
    leal    v1, %eax                #   2:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  2 <- t0
    pushl   %eax                   
    movl    $32050, %eax            #   4:     param  3 <- 32050
    pushl   %eax                   
    leal    v1, %eax                #   5:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  2 <- t1
    pushl   %eax                   
    movl    $1, %eax                #   7:     if     1 # 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_7               
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $1, %eax                #  10:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  11:     goto   9
l_test_8:
    movl    $0, %eax                #  13:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_9:
    movzbl  -21(%ebp), %eax         #  15:     param  1 <- t2
    pushl   %eax                   
    jmp     l_test_11               #  16:     goto   11
    jmp     l_test_12               #  17:     goto   12
l_test_11:
    movl    $1, %eax                #  19:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_13               #  20:     goto   13
l_test_12:
    movl    $0, %eax                #  22:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_13:
    movzbl  -22(%ebp), %eax         #  24:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  25:     call   t4 <- f2
    addl    $16, %esp              
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  26:     if     t4 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6               
    jmp     l_test_3                #  27:     goto   3
l_test_6:
    jmp     l_test_3                #  29:     goto   3
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_test_4                #  31:     goto   4
l_test_3:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -24(%ebp)         
l_test_4:
    movzbl  -24(%ebp), %eax         #  35:     param  1 <- t5
    pushl   %eax                   
    movl    $0, %eax                #  36:     param  0 <- 0
    pushl   %eax                   
    call    f2                      #  37:     call   t6 <- f2
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    call    dummyCHARfunc           #  38:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 6 of <array 7 of <array 2 of <array 5 of <array 5 of <char>>>>>>
    .long    5
    .long    6
    .long    7
    .long    2
    .long    5
    .long    5
    .skip 2100








    # end of global data section
    #-----------------------------------------

    .end
##################################################
