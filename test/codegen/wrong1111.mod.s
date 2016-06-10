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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 71 of <array 4 of <array 34 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 49 of <array 24 of <array 41 of <array 73 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    jmp     l_f0_exit              
    movl    $97, %eax               #   1:     assign v3 <- 97
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
    movl    $98, %eax               #   4:     if     98 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   5:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_10_while_cond:
    movl    $97, %eax               #  11:     if     97 <= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_11_while_body     
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_10_while_cond      #  15:     goto   10_while_cond
l_f0_9:

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
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t5       <char> %ebp-62 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 10 of <array 47 of <array 1 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 68 of <array 67 of <array 50 of <array 99 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 91 of <array 93 of <array 11 of <array 86 of <array 24 of <int>>>>>>> %ebp+20 ]
    #    -84(%ebp)   4  [ $v4       <int> %ebp-84 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $97, %eax               #   2:     return 97
    jmp     l_f1_exit              
    movl    $97, %eax               #   3:     return 97
    jmp     l_f1_exit              
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   5:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   6:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $16061, %eax            #   7:     mul    t7 <- 16061, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   8:     add    t8 <- t7, 40363
    movl    $40363, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  10:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  11:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  12:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t11 <- t10, 97365
    movl    $97365, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  17:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t14 <- t13, 37045
    movl    $37045, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t17 <- t16, 51779
    movl    $51779, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  26:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    20(%ebp), %eax          #  28:     add    t21 <- v3, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $99853, %eax            #  29:     assign @t21 <- 99853
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_1                  #  30:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_8_while_cond:
    movl    $16362, %eax            #  34:     if     16362 < 43680 goto 9_while_body
    movl    $43680, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_9_while_body      
    jmp     l_f1_7                  #  35:     goto   7
l_f1_9_while_body:
    call    dummyCHARfunc           #  37:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  38:     return t22
    jmp     l_f1_exit              
    jmp     l_f1_8_while_cond       #  39:     goto   8_while_cond
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 91 of <array 93 of <array 11 of <array 86 of <array 24 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 27 of <array 68 of <array 67 of <array 50 of <array 99 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 98 of <array 10 of <array 47 of <array 1 of <array 10 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -460656(%ebp)  460624  [ $v2       <array 98 of <array 10 of <array 47 of <array 1 of <array 10 of <char>>>>>> %ebp-460656 ]
    #   -609370080(%ebp)  608909424  [ $v3       <array 27 of <array 68 of <array 67 of <array 50 of <array 99 of <bool>>>>>> %ebp-609370080 ]
    #   -1377945912(%ebp)  768575832  [ $v4       <array 91 of <array 93 of <array 11 of <array 86 of <array 24 of <int>>>>>> %ebp-1377945912 ]
    #   -1377945913(%ebp)   1  [ $v5       <char> %ebp-1377945913 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1377945904, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $344486476, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-460656(%ebp)        # local array 'v2': 5 dimensions
    movl    $98,-460652(%ebp)       #   dimension 1: 98 elements
    movl    $10,-460648(%ebp)       #   dimension 2: 10 elements
    movl    $47,-460644(%ebp)       #   dimension 3: 47 elements
    movl    $1,-460640(%ebp)        #   dimension 4: 1 elements
    movl    $10,-460636(%ebp)       #   dimension 5: 10 elements
    movl    $5,-609370080(%ebp)     # local array 'v3': 5 dimensions
    movl    $27,-609370076(%ebp)    #   dimension 1: 27 elements
    movl    $68,-609370072(%ebp)    #   dimension 2: 68 elements
    movl    $67,-609370068(%ebp)    #   dimension 3: 67 elements
    movl    $50,-609370064(%ebp)    #   dimension 4: 50 elements
    movl    $99,-609370060(%ebp)    #   dimension 5: 99 elements
    movl    $5,-1377945912(%ebp)    # local array 'v4': 5 dimensions
    movl    $91,-1377945908(%ebp)   #   dimension 1: 91 elements
    movl    $93,-1377945904(%ebp)   #   dimension 2: 93 elements
    movl    $11,-1377945900(%ebp)   #   dimension 3: 11 elements
    movl    $86,-1377945896(%ebp)   #   dimension 4: 86 elements
    movl    $24,-1377945892(%ebp)   #   dimension 5: 24 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    movl    $99, %eax               #   5:     if     99 <= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_while_body      
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   8:     goto   5_while_cond
l_f2_4:
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_10_while_cond:
    movl    $98, %eax               #  12:     if     98 >= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11_while_body     
    jmp     l_f2_9                  #  13:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  15:     goto   10_while_cond
l_f2_9:
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  18:     goto   14_while_cond
    movl    $99, %eax               #  19:     return 99
    jmp     l_f2_exit              
    movl    $100, %eax              #  20:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  21:     goto   1_while_cond
l_f2_0:
l_f2_19_while_cond:
    leal    -1377945912(%ebp), %eax #  24:     &()    t6 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     param  3 <- t6
    pushl   %eax                   
    leal    -609370080(%ebp), %eax  #  26:     &()    t7 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     param  2 <- t7
    pushl   %eax                   
    leal    -460656(%ebp), %eax     #  28:     &()    t8 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  1 <- t8
    pushl   %eax                   
    movl    $1, %eax                #  30:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  31:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  32:     if     t9 = 98 goto 20_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_20_while_body     
    jmp     l_f2_18                 #  33:     goto   18
l_f2_20_while_body:
    movl    $62664, %eax            #  35:     param  0 <- 62664
    pushl   %eax                   
    call    WriteInt                #  36:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_19_while_cond      #  37:     goto   19_while_cond
l_f2_18:
    movl    $59314, %eax            #  39:     if     59314 > 67484 goto 24_if_true
    movl    $67484, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  40:     goto   25_if_false
l_f2_24_if_true:
    movl    $97, %eax               #  42:     assign v5 <- 97
    movb    %al, -1377945913(%ebp) 
    movl    $1, %eax                #  43:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    jmp     l_f2_23                 #  44:     goto   23
l_f2_25_if_false:
l_f2_23:

l_f2_exit:
    # epilogue
    addl    $1377945904, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97653, %eax            #   1:     if     97653 > 25922 goto 2_if_true
    movl    $25922, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
    call    WriteLn                 #   6:     call   WriteLn
    movl    $29595, %eax            #   7:     if     29595 # 7475 goto 10_if_true
    movl    $7475, %ebx            
    cmpl    %ebx, %eax             
    jne     l_test_10_if_true      
    jmp     l_test_11_if_false      #   8:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  10:     goto   9
l_test_11_if_false:
l_test_9:
l_test_14_while_cond:
    jmp     l_test_13               #  14:     goto   13
    jmp     l_test_14_while_cond    #  15:     goto   14_while_cond
l_test_13:
l_test_17_while_cond:
    movl    $24531, %eax            #  18:     if     24531 >= 2133 goto 18_while_body
    movl    $2133, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_18_while_body   
    jmp     l_test_16               #  19:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  21:     goto   17_while_cond
l_test_16:
l_test_21_while_cond:
    jmp     l_test_20               #  24:     goto   20
    jmp     l_test_21_while_cond    #  25:     goto   21_while_cond
l_test_20:
    call    dummyCHARfunc           #  27:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_24               #  28:     goto   24
l_test_24:
    jmp     l_test_1                #  30:     goto   1
l_test_3_if_false:
l_test_1:
    call    ReadInt                 #  33:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #  34:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
l_test_30_while_cond:
    jmp     l_test_29               #  36:     goto   29
    movl    $4326, %eax             #  37:     assign v0 <- 4326
    movl    %eax, v0               
    call    dummyBOOLfunc           #  38:     call   t4 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_30_while_cond    #  39:     goto   30_while_cond
l_test_29:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
