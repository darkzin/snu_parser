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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $90072, %eax            #   0:     add    t5 <- 90072, 70314
    movl    $70314, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t6 <- t5, 87228
    movl    $87228, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t6
    movl    %eax, -24(%ebp)        
    movl    $97, %eax               #   3:     assign v1 <- 97
    movb    %al, 12(%ebp)          
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
    movl    $63948, %eax            #   5:     assign v2 <- 63948
    movl    %eax, -24(%ebp)        
    movl    $1463, %eax             #   6:     if     1463 < 66298 goto 7_if_true
    movl    $66298, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t9       <bool> %ebp-38 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 10 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -928(%ebp)  888  [ $v2       <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>> %ebp-928 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $916, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $229, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-928(%ebp)           # local array 'v2': 5 dimensions
    movl    $2,-924(%ebp)           #   dimension 1: 2 elements
    movl    $6,-920(%ebp)           #   dimension 2: 6 elements
    movl    $9,-916(%ebp)           #   dimension 3: 9 elements
    movl    $4,-912(%ebp)           #   dimension 4: 4 elements
    movl    $2,-908(%ebp)           #   dimension 5: 2 elements

    # function body
    movl    $99, %eax               #   0:     param  1 <- 99
    pushl   %eax                   
    leal    -928(%ebp), %eax        #   1:     &()    t5 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   3:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movl    $99, %eax               #   4:     param  1 <- 99
    pushl   %eax                   
    leal    -928(%ebp), %eax        #   5:     &()    t7 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   7:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    movzbl  -29(%ebp), %eax         #   8:     if     t6 >= t8 goto 1
    movzbl  -37(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   9:     goto   2
l_f1_1:
    movl    $1, %eax                #  11:     assign t9 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_f1_3                  #  12:     goto   3
l_f1_2:
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -38(%ebp)         
l_f1_3:
    movzbl  -38(%ebp), %eax         #  16:     return t9
    jmp     l_f1_exit              
    call    ReadInt                 #  17:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     sub    t11 <- t10, 41285
    movl    $41285, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  0 <- t11
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  21:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  22:     if     t12 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #  23:     goto   8
l_f1_7:
    movl    $1, %eax                #  25:     assign t13 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_9                  #  26:     goto   9
l_f1_8:
    movl    $0, %eax                #  28:     assign t13 <- 0
    movb    %al, -22(%ebp)         
l_f1_9:
    movzbl  -22(%ebp), %eax         #  30:     return t13
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $916, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t5       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-112 ]
    #   -113(%ebp)   1  [ $t7       <char> %ebp-113 ]
    #   -120(%ebp)   4  [ $t8       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-120 ]
    #   -121(%ebp)   1  [ $t9       <char> %ebp-121 ]
    #   -1012(%ebp)  888  [ $v0       <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>> %ebp-1012 ]
    #   -1016(%ebp)   4  [ $v1       <int> %ebp-1016 ]
    #   -1017(%ebp)   1  [ $v2       <bool> %ebp-1017 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1008, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $252, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1012(%ebp)          # local array 'v0': 5 dimensions
    movl    $2,-1008(%ebp)          #   dimension 1: 2 elements
    movl    $6,-1004(%ebp)          #   dimension 2: 6 elements
    movl    $9,-1000(%ebp)          #   dimension 3: 9 elements
    movl    $4,-996(%ebp)           #   dimension 4: 4 elements
    movl    $2,-992(%ebp)           #   dimension 5: 2 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    call    dummyBOOLfunc           #   6:     call   t5 <- dummyBOOLfunc
    movb    %al, -105(%ebp)        
    movzbl  -105(%ebp), %eax        #   7:     if     t5 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #   8:     goto   4
l_f2_6_while_body:
    call    dummyProcedure          #  10:     call   dummyProcedure
    jmp     l_f2_5_while_cond       #  11:     goto   5_while_cond
l_f2_4:
l_f2_9_while_cond:
    movl    $100, %eax              #  14:     param  1 <- 100
    pushl   %eax                   
    leal    -1012(%ebp), %eax       #  15:     &()    t6 <- v0
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  16:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  17:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -113(%ebp)        
    movl    $99, %eax               #  18:     param  1 <- 99
    pushl   %eax                   
    leal    -1012(%ebp), %eax       #  19:     &()    t8 <- v0
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  20:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  21:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -121(%ebp)        
    movl    $77752, %eax            #  22:     assign v1 <- 77752
    movl    %eax, -1016(%ebp)      
l_f2_18_while_cond:
    jmp     l_f2_17                 #  24:     goto   17
    jmp     l_f2_18_while_cond      #  25:     goto   18_while_cond
l_f2_17:
    movl    $98, %eax               #  27:     if     98 > 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  28:     goto   22_if_false
l_f2_21_if_true:
    jmp     l_f2_20                 #  30:     goto   20
l_f2_22_if_false:
l_f2_20:
    call    ReadInt                 #  33:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f2_26_while_cond:
    movl    $42737, %eax            #  35:     if     42737 < 89253 goto 27_while_body
    movl    $89253, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_27_while_body     
    jmp     l_f2_25                 #  36:     goto   25
l_f2_27_while_body:
    jmp     l_f2_26_while_cond      #  38:     goto   26_while_cond
l_f2_25:
    leal    -1012(%ebp), %eax       #  40:     &()    t11 <- v0
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    leal    -1012(%ebp), %eax       #  42:     &()    t12 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  43:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  44:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $12196, %eax            #  45:     mul    t14 <- 12196, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  46:     add    t15 <- t14, 57618
    movl    $57618, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  47:     param  1 <- 3
    pushl   %eax                   
    leal    -1012(%ebp), %eax       #  48:     &()    t16 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  49:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  50:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  51:     mul    t18 <- t15, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  52:     add    t19 <- t18, 73372
    movl    $73372, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  53:     param  1 <- 4
    pushl   %eax                   
    leal    -1012(%ebp), %eax       #  54:     &()    t20 <- v0
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  55:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  56:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  57:     mul    t22 <- t19, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  58:     add    t23 <- t22, 42050
    movl    $42050, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  59:     param  1 <- 5
    pushl   %eax                   
    leal    -1012(%ebp), %eax       #  60:     &()    t24 <- v0
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  61:     param  0 <- t24
    pushl   %eax                   
    call    DIM                     #  62:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  63:     mul    t26 <- t23, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  64:     add    t27 <- t26, 5219
    movl    $5219, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  65:     mul    t28 <- t27, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    -1012(%ebp), %eax       #  66:     &()    t29 <- v0
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  67:     param  0 <- t29
    pushl   %eax                   
    call    DOFS                    #  68:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  69:     add    t31 <- t28, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -20(%ebp), %eax         #  70:     add    t32 <- t11, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $1, %eax                #  71:     assign @t32 <- 1
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            
    jmp     l_f2_9_while_cond       #  72:     goto   9_while_cond

l_f2_exit:
    # epilogue
    addl    $1008, %esp             # remove locals
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
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
l_test_1_while_cond:
    movl    $73558, %eax            #   1:     add    t0 <- 73558, 46245
    movl    $46245, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 27221
    movl    $27221, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 25608
    movl    $25608, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $22300, %eax            #   4:     if     22300 >= t2 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   5:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $52447, %eax            #   8:     if     52447 # 90626 goto 6_while_body
    movl    $90626, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   9:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  11:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $97, %eax               #  18:     param  1 <- 97
    pushl   %eax                   
    leal    v0, %eax                #  19:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  21:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         

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
v0:                                 # <array 2 of <array 6 of <array 9 of <array 4 of <array 2 of <bool>>>>>>
    .long    5
    .long    2
    .long    6
    .long    9
    .long    4
    .long    2
    .skip  864








    # end of global data section
    #-----------------------------------------

    .end
##################################################
