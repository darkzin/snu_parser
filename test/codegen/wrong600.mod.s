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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 1 of <array 7 of <array 10 of <array 7 of <int>>>>>>> %ebp+12 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_4_while_cond:
    jmp     l_f0_3                  #   2:     goto   3
    jmp     l_f0_4_while_cond       #   3:     goto   4_while_cond
l_f0_3:
l_f0_7_while_cond:
    movl    $99, %eax               #   6:     if     99 >= 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_8_while_body      
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #   9:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  14:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  15:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #  17:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 1 of <array 7 of <array 10 of <array 7 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 5 of <array 5 of <array 3 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 7 of <array 4 of <array 9 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 4 of <array 10 of <array 7 of <array 1 of <int>>>>>>> %ebp+16 ]
    #    -40(%ebp)   4  [ $v5       <int> %ebp-40 ]
    #   -5944(%ebp)  5904  [ $v6       <array 3 of <array 1 of <array 7 of <array 10 of <array 7 of <int>>>>>> %ebp-5944 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5932, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1483, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5944(%ebp)          # local array 'v6': 5 dimensions
    movl    $3,-5940(%ebp)          #   dimension 1: 3 elements
    movl    $1,-5936(%ebp)          #   dimension 2: 1 elements
    movl    $7,-5932(%ebp)          #   dimension 3: 7 elements
    movl    $10,-5928(%ebp)         #   dimension 4: 10 elements
    movl    $7,-5924(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $76440, %eax            #   0:     assign v5 <- 76440
    movl    %eax, -40(%ebp)        
    movl    $62119, %eax            #   1:     if     62119 = 17046 goto 2_if_true
    movl    $17046, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
l_f1_2_if_true:
    jmp     l_f1_1                  #   3:     goto   1
l_f1_1:
    movl    $56651, %eax            #   5:     mul    t1 <- 56651, 94720
    movl    $94720, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    leal    -5944(%ebp), %eax       #   6:     &()    t2 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  1 <- t2
    pushl   %eax                   
    movl    $77290, %eax            #   8:     add    t3 <- 77290, 95280
    movl    $95280, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $82952, %eax            #   9:     if     82952 <= t3 goto 7
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_7                 
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_9                  #  13:     goto   9
l_f1_8:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f1_9:
    movzbl  -25(%ebp), %eax         #  17:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  18:     call   t5 <- f0
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -16(%ebp), %eax         #  19:     div    t6 <- t1, t5
    movl    -32(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $5932, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t2       <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $t3       <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 10 of <array 9 of <array 4 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 5 of <array 2 of <array 2 of <array 1 of <char>>>>>>> %ebp+16 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_8                  #   5:     goto   8
    jmp     l_f2_8                  #   6:     goto   8
l_f2_8:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_10                 #   9:     goto   10
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_10:
    movzbl  -13(%ebp), %eax         #  12:     if     t1 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #  13:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #  15:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  20:     return t2
    jmp     l_f2_exit              
    jmp     l_f2_18_if_false        #  21:     goto   18_if_false
    movl    $34357, %eax            #  22:     if     34357 = 81303 goto 20
    movl    $81303, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_20                
    jmp     l_f2_21                 #  23:     goto   21
l_f2_20:
    movl    $1, %eax                #  25:     assign t3 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_22                 #  26:     goto   22
l_f2_21:
    movl    $0, %eax                #  28:     assign t3 <- 0
    movb    %al, -58(%ebp)         
l_f2_22:
    movl    $2, %eax                #  30:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $1551, %eax             #  33:     mul    t5 <- 1551, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  34:     add    t6 <- t5, 20183
    movl    $20183, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  38:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  39:     add    t9 <- t8, 84007
    movl    $84007, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -84(%ebp), %eax         #  43:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     add    t12 <- t11, 24067
    movl    $24067, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  48:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  49:     add    t15 <- t14, 29804
    movl    $29804, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  50:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  51:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  52:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  53:     add    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  54:     add    t19 <- v2, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -58(%ebp), %eax         #  55:     assign @t19 <- t3
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_25_while_cond:
    jmp     l_f2_24                 #  57:     goto   24
    jmp     l_f2_25_while_cond      #  58:     goto   25_while_cond
l_f2_24:
    jmp     l_f2_16                 #  60:     goto   16
l_f2_18_if_false:
l_f2_16:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    movl    $0, %eax                #   1:     if     0 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $100, %eax              #   4:     assign v0 <- 100
    movb    %al, v0                
    movl    $1, %eax                #   5:     if     1 # 0 goto 7_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
l_test_11_while_cond:
    jmp     l_test_10               #  15:     goto   10
    jmp     l_test_10               #  16:     goto   10
    movl    $71292, %eax            #  17:     assign v1 <- 71292
    movl    %eax, v1               
    jmp     l_test_11_while_cond    #  18:     goto   11_while_cond
l_test_10:
l_test_18_while_cond:
    jmp     l_test_19_while_body    #  21:     goto   19_while_body
    jmp     l_test_19_while_body    #  22:     goto   19_while_body
    jmp     l_test_17               #  23:     goto   17
l_test_19_while_body:
    jmp     l_test_exit            
    call    dummyINTfunc            #  26:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_18_while_cond    #  27:     goto   18_while_cond
l_test_17:
    jmp     l_test_exit            
l_test_26_while_cond:
    jmp     l_test_25               #  31:     goto   25
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_26_while_cond    #  34:     goto   26_while_cond
l_test_25:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
