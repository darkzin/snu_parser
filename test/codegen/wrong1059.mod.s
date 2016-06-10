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
    #    -13(%ebp)   1  [ $t12      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t13      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t19      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t20      <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t21      <bool> %ebp-42 ]
    #    -43(%ebp)   1  [ $v1       <bool> %ebp-43 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_5                  #   0:     goto   5
    movl    $1, %eax                #   1:     assign t12 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   2:     goto   6
l_f0_5:
    movl    $0, %eax                #   4:     assign t12 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   6:     if     t12 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   7:     goto   2_if_false
l_f0_1_if_true:
    call    dummyCHARfunc           #   9:     call   t13 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $41531, %eax            #  13:     sub    t14 <- 41531, 67884
    movl    $67884, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $6586, %eax             #  14:     div    t15 <- 6586, 62746
    movl    $62746, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t16 <- t15, 97304
    movl    $97304, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     div    t17 <- t16, 65124
    movl    $65124, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     div    t18 <- t17, 21000
    movl    $21000, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t19 <- t14, t18
    movl    -36(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     if     t19 <= 59043 goto 10
    movl    $59043, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  20:     goto   11
l_f0_10:
    movl    $1, %eax                #  22:     assign t20 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f0_12                 #  23:     goto   12
l_f0_11:
    movl    $0, %eax                #  25:     assign t20 <- 0
    movb    %al, -41(%ebp)         
l_f0_12:
    movzbl  -41(%ebp), %eax         #  27:     assign v1 <- t20
    movb    %al, -43(%ebp)         
    jmp     l_f0_15                 #  28:     goto   15
l_f0_15:
    movl    $1, %eax                #  30:     assign t21 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_f0_17                 #  31:     goto   17
    movl    $0, %eax                #  32:     assign t21 <- 0
    movb    %al, -42(%ebp)         
l_f0_17:
    movzbl  -42(%ebp), %eax         #  34:     assign v1 <- t21
    movb    %al, -43(%ebp)         

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t12      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t13      <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 88 of <array 73 of <array 86 of <array 68 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 22 of <array 39 of <array 74 of <array 29 of <array 8 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t12 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t13 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t13
    jmp     l_f1_exit              
    movl    $15742, %eax            #   3:     param  0 <- 15742
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t12      <ptr(4) to <array 22 of <array 39 of <array 74 of <array 29 of <array 8 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <ptr(4) to <array 15 of <array 88 of <array 73 of <array 86 of <array 68 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t14      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t15      <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t16      <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 60 of <array 52 of <array 33 of <array 13 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 20 of <array 7 of <array 67 of <array 23 of <array 95 of <int>>>>>>> %ebp+20 ]
    #   -563513328(%ebp)  563513304  [ $v5       <array 15 of <array 88 of <array 73 of <array 86 of <array 68 of <bool>>>>>> %ebp-563513328 ]
    #   -578243496(%ebp)  14730168  [ $v6       <array 22 of <array 39 of <array 74 of <array 29 of <array 8 of <bool>>>>>> %ebp-578243496 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $578243484, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $144560871, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-563513328(%ebp)     # local array 'v5': 5 dimensions
    movl    $15,-563513324(%ebp)    #   dimension 1: 15 elements
    movl    $88,-563513320(%ebp)    #   dimension 2: 88 elements
    movl    $73,-563513316(%ebp)    #   dimension 3: 73 elements
    movl    $86,-563513312(%ebp)    #   dimension 4: 86 elements
    movl    $68,-563513308(%ebp)    #   dimension 5: 68 elements
    movl    $5,-578243496(%ebp)     # local array 'v6': 5 dimensions
    movl    $22,-578243492(%ebp)    #   dimension 1: 22 elements
    movl    $39,-578243488(%ebp)    #   dimension 2: 39 elements
    movl    $74,-578243484(%ebp)    #   dimension 3: 74 elements
    movl    $29,-578243480(%ebp)    #   dimension 4: 29 elements
    movl    $8,-578243476(%ebp)     #   dimension 5: 8 elements

    # function body
    leal    -578243496(%ebp), %eax  #   0:     &()    t12 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t12
    pushl   %eax                   
    leal    -563513328(%ebp), %eax  #   2:     &()    t13 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t13
    pushl   %eax                   
    call    dummyCHARfunc           #   4:     call   t14 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     param  0 <- t14
    pushl   %eax                   
    call    f1                      #   6:     call   t15 <- f1
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   7:     return t15
    jmp     l_f2_exit              
    movl    $100, %eax              #   8:     return 100
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   9:     call   t16 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         

l_f2_exit:
    # epilogue
    addl    $578243484, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 20 of <array 7 of <array 67 of <array 23 of <array 95 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 15 of <array 88 of <array 73 of <array 86 of <array 68 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t6       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t7       <ptr(4) to <array 75 of <array 60 of <array 52 of <array 33 of <array 13 of <char>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t8       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t9       <ptr(4) to <array 22 of <array 39 of <array 74 of <array 29 of <array 8 of <bool>>>>>>> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1                #   3:     goto   1
l_test_3_if_false:
l_test_1:
    leal    v2, %eax                #   6:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  3 <- t1
    pushl   %eax                   
    movl    $1, %eax                #   8:     param  2 <- 1
    pushl   %eax                   
    movl    $93112, %eax            #   9:     sub    t2 <- 93112, 63194
    movl    $63194, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t3 <- t2, 55155
    movl    $55155, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     add    t4 <- t3, 34745
    movl    $34745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     add    t5 <- t4, 91791
    movl    $91791, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $6239, %eax             #  13:     if     6239 = t5 goto 6
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_6               
    jmp     l_test_7                #  14:     goto   7
l_test_6:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_test_8                #  17:     goto   8
l_test_7:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -45(%ebp)         
l_test_8:
    movzbl  -45(%ebp), %eax         #  21:     param  1 <- t6
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t7 <- v1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  24:     call   t8 <- f2
    addl    $16, %esp              
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  25:     param  0 <- t8
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               
    leal    v4, %eax                #  27:     &()    t9 <- v4
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  28:     param  2 <- t9
    pushl   %eax                   
    leal    v3, %eax                #  29:     &()    t10 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     param  1 <- t10
    pushl   %eax                   
    movl    $100, %eax              #  31:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #  32:     call   t11 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  33:     param  0 <- t11
    pushl   %eax                   
    call    WriteChar               #  34:     call   WriteChar
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
v1:                                 # <array 75 of <array 60 of <array 52 of <array 33 of <array 13 of <char>>>>>>
    .long    5
    .long   75
    .long   60
    .long   52
    .long   33
    .long   13
    .skip 100386000
v2:                                 # <array 20 of <array 7 of <array 67 of <array 23 of <array 95 of <int>>>>>>
    .long    5
    .long   20
    .long    7
    .long   67
    .long   23
    .long   95
    .skip 81981200
v3:                                 # <array 15 of <array 88 of <array 73 of <array 86 of <array 68 of <bool>>>>>>
    .long    5
    .long   15
    .long   88
    .long   73
    .long   86
    .long   68
    .skip 563513280
v4:                                 # <array 22 of <array 39 of <array 74 of <array 29 of <array 8 of <bool>>>>>>
    .long    5
    .long   22
    .long   39
    .long   74
    .long   29
    .long    8
    .skip 14730144








    # end of global data section
    #-----------------------------------------

    .end
##################################################
