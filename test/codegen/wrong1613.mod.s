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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 76 of <array 4 of <array 50 of <array 49 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 26 of <array 24 of <array 57 of <array 81 of <array 94 of <bool>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   2:     goto   5_while_cond
    movl    $99, %eax               #   3:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   4:     goto   0
l_f0_0:
l_f0_9_while_cond:
    movl    $31289, %eax            #   7:     assign v4 <- 31289
    movl    %eax, -20(%ebp)        
    jmp     l_f0_9_while_cond       #   8:     goto   9_while_cond
    call    dummyCHARfunc           #   9:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t9
    movb    %al, 16(%ebp)          

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 76 of <array 4 of <array 50 of <array 49 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <ptr(4) to <array 26 of <array 24 of <array 57 of <array 81 of <array 94 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp-120 ]
    #   -2979344(%ebp)  2979224  [ $v0       <array 4 of <array 76 of <array 4 of <array 50 of <array 49 of <char>>>>>> %ebp-2979344 ]
    #   -375343120(%ebp)  372363774  [ $v1       <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>> %ebp-375343120 ]
    #   -646157896(%ebp)  270814776  [ $v2       <array 26 of <array 24 of <array 57 of <array 81 of <array 94 of <bool>>>>>> %ebp-646157896 ]
    #   -646157900(%ebp)   4  [ $v3       <int> %ebp-646157900 ]
    #   -646157901(%ebp)   1  [ $v4       <char> %ebp-646157901 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $646157892, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $161539473, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2979344(%ebp)       # local array 'v0': 5 dimensions
    movl    $4,-2979340(%ebp)       #   dimension 1: 4 elements
    movl    $76,-2979336(%ebp)      #   dimension 2: 76 elements
    movl    $4,-2979332(%ebp)       #   dimension 3: 4 elements
    movl    $50,-2979328(%ebp)      #   dimension 4: 50 elements
    movl    $49,-2979324(%ebp)      #   dimension 5: 49 elements
    movl    $5,-375343120(%ebp)     # local array 'v1': 5 dimensions
    movl    $75,-375343116(%ebp)    #   dimension 1: 75 elements
    movl    $51,-375343112(%ebp)    #   dimension 2: 51 elements
    movl    $33,-375343108(%ebp)    #   dimension 3: 33 elements
    movl    $50,-375343104(%ebp)    #   dimension 4: 50 elements
    movl    $59,-375343100(%ebp)    #   dimension 5: 59 elements
    movl    $5,-646157896(%ebp)     # local array 'v2': 5 dimensions
    movl    $26,-646157892(%ebp)    #   dimension 1: 26 elements
    movl    $24,-646157888(%ebp)    #   dimension 2: 24 elements
    movl    $57,-646157884(%ebp)    #   dimension 3: 57 elements
    movl    $81,-646157880(%ebp)    #   dimension 4: 81 elements
    movl    $94,-646157876(%ebp)    #   dimension 5: 94 elements

    # function body
    leal    -646157896(%ebp), %eax  #   0:     &()    t8 <- v2
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   1:     param  3 <- t8
    pushl   %eax                   
    movl    $98, %eax               #   2:     param  2 <- 98
    pushl   %eax                   
    leal    -375343120(%ebp), %eax  #   3:     &()    t9 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   4:     param  1 <- t9
    pushl   %eax                   
    leal    -2979344(%ebp), %eax    #   5:     &()    t10 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #   7:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movl    $7339, %eax             #   8:     assign v3 <- 7339
    movl    %eax, -646157900(%ebp) 
    leal    -375343120(%ebp), %eax  #   9:     &()    t12 <- v1
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    leal    -375343120(%ebp), %eax  #  11:     &()    t13 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  13:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $56145, %eax            #  14:     mul    t15 <- 56145, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     add    t16 <- t15, 12057
    movl    $12057, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    leal    -375343120(%ebp), %eax  #  17:     &()    t17 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  19:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  20:     mul    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    $75900, %eax            #  21:     add    t20 <- 75900, 57159
    movl    $57159, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    leal    -375343120(%ebp), %eax  #  24:     &()    t22 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  25:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  26:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  27:     mul    t24 <- t21, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  28:     add    t25 <- t24, 44150
    movl    $44150, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    leal    -375343120(%ebp), %eax  #  30:     &()    t26 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  31:     param  0 <- t26
    pushl   %eax                   
    call    DIM                     #  32:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  33:     mul    t28 <- t25, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  34:     add    t29 <- t28, 33203
    movl    $33203, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  35:     mul    t30 <- t29, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    leal    -375343120(%ebp), %eax  #  36:     &()    t31 <- v1
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  37:     param  0 <- t31
    pushl   %eax                   
    call    DOFS                    #  38:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -104(%ebp)       
    movl    -96(%ebp), %eax         #  39:     add    t33 <- t30, t32
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -24(%ebp), %eax         #  40:     add    t34 <- t12, t33
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $98, %eax               #  41:     assign @t34 <- 98
    movl    -112(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $646157892, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 76 of <array 4 of <array 50 of <array 49 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <ptr(4) to <array 26 of <array 24 of <array 57 of <array 81 of <array 94 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>>> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 17 of <array 20 of <array 55 of <array 82 of <array 55 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 25 of <array 40 of <array 53 of <array 25 of <array 68 of <int>>>>>>> %ebp+16 ]
    #   -2979260(%ebp)  2979224  [ $v3       <array 4 of <array 76 of <array 4 of <array 50 of <array 49 of <char>>>>>> %ebp-2979260 ]
    #   -375343036(%ebp)  372363774  [ $v4       <array 75 of <array 51 of <array 33 of <array 50 of <array 59 of <char>>>>>> %ebp-375343036 ]
    #   -646157812(%ebp)  270814776  [ $v5       <array 26 of <array 24 of <array 57 of <array 81 of <array 94 of <bool>>>>>> %ebp-646157812 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $646157800, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $161539450, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2979260(%ebp)       # local array 'v3': 5 dimensions
    movl    $4,-2979256(%ebp)       #   dimension 1: 4 elements
    movl    $76,-2979252(%ebp)      #   dimension 2: 76 elements
    movl    $4,-2979248(%ebp)       #   dimension 3: 4 elements
    movl    $50,-2979244(%ebp)      #   dimension 4: 50 elements
    movl    $49,-2979240(%ebp)      #   dimension 5: 49 elements
    movl    $5,-375343036(%ebp)     # local array 'v4': 5 dimensions
    movl    $75,-375343032(%ebp)    #   dimension 1: 75 elements
    movl    $51,-375343028(%ebp)    #   dimension 2: 51 elements
    movl    $33,-375343024(%ebp)    #   dimension 3: 33 elements
    movl    $50,-375343020(%ebp)    #   dimension 4: 50 elements
    movl    $59,-375343016(%ebp)    #   dimension 5: 59 elements
    movl    $5,-646157812(%ebp)     # local array 'v5': 5 dimensions
    movl    $26,-646157808(%ebp)    #   dimension 1: 26 elements
    movl    $24,-646157804(%ebp)    #   dimension 2: 24 elements
    movl    $57,-646157800(%ebp)    #   dimension 3: 57 elements
    movl    $81,-646157796(%ebp)    #   dimension 4: 81 elements
    movl    $94,-646157792(%ebp)    #   dimension 5: 94 elements

    # function body
    leal    -646157812(%ebp), %eax  #   0:     &()    t8 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     param  3 <- t8
    pushl   %eax                   
    movl    $100, %eax              #   2:     param  2 <- 100
    pushl   %eax                   
    leal    -375343036(%ebp), %eax  #   3:     &()    t9 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     param  1 <- t9
    pushl   %eax                   
    leal    -2979260(%ebp), %eax    #   5:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #   7:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     return t11
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $97, %eax               #  10:     if     97 >= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #  11:     goto   1
l_f2_3_while_body:
    movl    $38046, %eax            #  13:     if     38046 = 2696 goto 6_if_true
    movl    $2696, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  14:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  16:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $47295, %eax            #  19:     param  0 <- 47295
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               
    call    ReadInt                 #  21:     call   t12 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f2_2_while_cond       #  22:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #  24:     call   t13 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  25:     if     t13 = 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  26:     goto   13_if_false
l_f2_12_if_true:
    movl    $93475, %eax            #  28:     assign v1 <- 93475
    movl    %eax, 12(%ebp)         
    jmp     l_f2_11                 #  29:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $646157800, %esp        # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 25 of <array 40 of <array 53 of <array 25 of <array 68 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 17 of <array 20 of <array 55 of <array 82 of <array 55 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <char>>> %ebp-32 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 <= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyBOOLfunc           #   8:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   9:     assign v0 <- 99
    movb    %al, v0                
    leal    v2, %eax                #  10:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  2 <- t2
    pushl   %eax                   
    movl    $51698, %eax            #  12:     param  1 <- 51698
    pushl   %eax                   
    leal    v1, %eax                #  13:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  15:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $91716, %eax            #  16:     assign v3 <- 91716
    movl    %eax, v3               
    jmp     l_test_7                #  17:     goto   7
l_test_7:
l_test_14_while_cond:
    movl    $80931, %eax            #  20:     if     80931 < 31555 goto 15_while_body
    movl    $31555, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  21:     goto   13
l_test_15_while_body:
    call    dummyBOOLfunc           #  23:     call   t5 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
l_test_19_while_cond:
    jmp     l_test_19_while_cond    #  25:     goto   19_while_cond
    jmp     l_test_21               #  26:     goto   21
l_test_21:
    movl    $58203, %eax            #  28:     if     58203 >= 67280 goto 25_if_true
    movl    $67280, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_25_if_true      
    jmp     l_test_26_if_false      #  29:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  31:     goto   24
l_test_26_if_false:
l_test_24:
    movl    $76930, %eax            #  34:     if     76930 < 15979 goto 29_if_true
    movl    $15979, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_29_if_true      
    jmp     l_test_30_if_false      #  35:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  37:     goto   28
l_test_30_if_false:
l_test_28:
    call    dummyBOOLfunc           #  40:     call   t6 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
l_test_34_while_cond:
    movl    $57420, %eax            #  42:     if     57420 > 4128 goto 35_while_body
    movl    $4128, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_35_while_body   
    jmp     l_test_33               #  43:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  45:     goto   34_while_cond
l_test_33:
    jmp     l_test_14_while_cond    #  47:     goto   14_while_cond
l_test_13:
    leal    _str_1, %eax            #  49:     &()    t7 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  50:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  51:     call   WriteStr
    addl    $4, %esp               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <array 17 of <array 20 of <array 55 of <array 82 of <array 55 of <char>>>>>>
    .long    5
    .long   17
    .long   20
    .long   55
    .long   82
    .long   55
    .skip 84337000
v2:                                 # <array 25 of <array 40 of <array 53 of <array 25 of <array 68 of <int>>>>>>
    .long    5
    .long   25
    .long   40
    .long   53
    .long   25
    .long   68
    .skip 360400000
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
