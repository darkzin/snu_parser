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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 48 of <array 50 of <array 50 of <array 35 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 68 of <array 18 of <array 76 of <array 100 of <array 82 of <int>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t4
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   2:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #   4:     assign v3 <- 100
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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t4       <char> %ebp-62 ]
    #    -63(%ebp)   1  [ $t5       <bool> %ebp-63 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 86 of <array 32 of <array 63 of <array 25 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 36 of <array 21 of <array 75 of <array 52 of <array 94 of <int>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v4       <bool> %ebp-81 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    movzbl  -62(%ebp), %eax         #   2:     if     t4 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $93903, %eax            #   5:     if     93903 < 9580 goto 5_if_true
    movl    $9580, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    movl    $99, %eax               #  12:     if     99 = 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_10_while_body     
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  15:     goto   9_while_cond
l_f1_8:
    movl    $1, %eax                #  17:     assign v4 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  20:     call   t5 <- dummyBOOLfunc
    movb    %al, -63(%ebp)         
    movzbl  -63(%ebp), %eax         #  21:     if     t5 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  22:     goto   15_if_false
l_f1_14_if_true:
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $34459, %eax            #  27:     mul    t7 <- 34459, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  28:     add    t8 <- t7, 53042
    movl    $53042, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  32:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  33:     add    t11 <- t10, 80882
    movl    $80882, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  37:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     add    t14 <- t13, 87595
    movl    $87595, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  40:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  41:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  42:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  43:     add    t17 <- t16, 33818
    movl    $33818, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  44:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  45:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  46:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  47:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  48:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $94772, %eax            #  49:     assign @t21 <- 94772
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $44192, %eax            #  50:     return 44192
    jmp     l_f1_exit              
    jmp     l_f1_13                 #  51:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_19                 #  54:     goto   19
l_f1_19:
    movl    $1, %eax                #  56:     assign t22 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f1_21                 #  57:     goto   21
    movl    $0, %eax                #  58:     assign t22 <- 0
    movb    %al, -61(%ebp)         
l_f1_21:
    movzbl  -61(%ebp), %eax         #  60:     assign v4 <- t22
    movb    %al, -81(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 36 of <array 21 of <array 75 of <array 52 of <array 94 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 34 of <array 86 of <array 32 of <array 63 of <array 25 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 25 of <array 4 of <array 33 of <array 37 of <char>>>>>>> %ebp+8 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]
    #   -589478464(%ebp)  589478424  [ $v2       <array 34 of <array 86 of <array 32 of <array 63 of <array 25 of <int>>>>>> %ebp-589478464 ]
    #   -1698076888(%ebp)  1108598424  [ $v3       <array 36 of <array 21 of <array 75 of <array 52 of <array 94 of <int>>>>>> %ebp-1698076888 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1698076876, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $424519219, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-589478464(%ebp)     # local array 'v2': 5 dimensions
    movl    $34,-589478460(%ebp)    #   dimension 1: 34 elements
    movl    $86,-589478456(%ebp)    #   dimension 2: 86 elements
    movl    $32,-589478452(%ebp)    #   dimension 3: 32 elements
    movl    $63,-589478448(%ebp)    #   dimension 4: 63 elements
    movl    $25,-589478444(%ebp)    #   dimension 5: 25 elements
    movl    $5,-1698076888(%ebp)    # local array 'v3': 5 dimensions
    movl    $36,-1698076884(%ebp)   #   dimension 1: 36 elements
    movl    $21,-1698076880(%ebp)   #   dimension 2: 21 elements
    movl    $75,-1698076876(%ebp)   #   dimension 3: 75 elements
    movl    $52,-1698076872(%ebp)   #   dimension 4: 52 elements
    movl    $94,-1698076868(%ebp)   #   dimension 5: 94 elements

    # function body
    leal    -1698076888(%ebp), %eax #   0:     &()    t4 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t4
    pushl   %eax                   
    movl    $25892, %eax            #   2:     param  2 <- 25892
    pushl   %eax                   
    leal    -589478464(%ebp), %eax  #   3:     &()    t5 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t5
    pushl   %eax                   
    call    dummyCHARfunc           #   5:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   7:     call   t7 <- f1
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     assign v1 <- t7
    movl    %eax, -40(%ebp)        
    call    dummyINTfunc            #   9:     call   t8 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #  10:     call   t9 <- dummyCHARfunc
    movb    %al, -33(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1698076876, %esp       # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $22212, %eax            #   3:     add    t0 <- 22212, 29765
    movl    $29765, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     add    t1 <- t0, 87345
    movl    $87345, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $0, %eax                #   9:     if     0 # 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  13:     goto   9
l_test_9:
    jmp     l_test_5                #  15:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $59844, %eax            #  18:     if     59844 <= 20669 goto 14_if_true
    movl    $20669, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14_if_true      
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
l_test_14_if_true:
    movl    $26482, %eax            #  21:     assign v0 <- 26482
    movl    %eax, v0               
    movl    $66371, %eax            #  22:     if     66371 >= 39863 goto 19
    movl    $39863, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_19              
    jmp     l_test_20               #  23:     goto   20
l_test_19:
    movl    $1, %eax                #  25:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_21               #  26:     goto   21
l_test_20:
    movl    $0, %eax                #  28:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_21:
    movzbl  -22(%ebp), %eax         #  30:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_13               #  31:     goto   13
l_test_15_if_false:
l_test_13:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
