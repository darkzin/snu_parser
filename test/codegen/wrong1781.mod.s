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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -48(%ebp)   4  [ $v1       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $62474, %eax            #   0:     if     62474 >= 43804 goto 1_if_true
    movl    $43804, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $62362, %eax            #   4:     if     62362 < 8087 goto 6_while_body
    movl    $8087, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  10:     goto   9
l_f0_9:
l_f0_13_while_cond:
    jmp     l_f0_12                 #  13:     goto   12
    jmp     l_f0_13_while_cond      #  14:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_0                  #  16:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $2099, %eax             #  19:     mul    t10 <- 2099, 60388
    movl    $60388, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     div    t11 <- t10, 10173
    movl    $10173, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     mul    t12 <- t11, 25496
    movl    $25496, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     div    t13 <- t12, 38815
    movl    $38815, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t14 <- t13, 85056
    movl    $85056, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     sub    t15 <- t14, 21784
    movl    $21784, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     sub    t16 <- t15, 11619
    movl    $11619, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     assign v1 <- t16
    movl    %eax, -48(%ebp)        
    call    dummyINTfunc            #  27:     call   t17 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    jmp     l_f0_exit              
    movl    $97, %eax               #  29:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_16                 #  30:     goto   16
l_f0_16:

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 51 of <array 47 of <array 56 of <array 77 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 69 of <array 42 of <array 9 of <array 12 of <array 63 of <int>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $0, %eax                #   2:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    movl    $100, %eax              #   6:     if     100 > 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_9                  #   9:     goto   9
l_f1_9:
l_f1_13_while_cond:
    jmp     l_f1_14_while_body      #  12:     goto   14_while_body
    jmp     l_f1_12                 #  13:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  15:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
l_f1_5:
    call    dummyINTfunc            #  19:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $84645, %eax            #  20:     if     84645 >= t10 goto 17
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_17                
    jmp     l_f1_18                 #  21:     goto   18
l_f1_17:
    movl    $1, %eax                #  23:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_19                 #  24:     goto   19
l_f1_18:
    movl    $0, %eax                #  26:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_19:
    movzbl  -17(%ebp), %eax         #  28:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 69 of <array 42 of <array 9 of <array 12 of <array 63 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 98 of <array 51 of <array 47 of <array 56 of <array 77 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 13 of <array 51 of <array 52 of <array 46 of <char>>>>>>> %ebp+8 ]
    #    -23(%ebp)   1  [ $v1       <char> %ebp-23 ]
    #   -1012914720(%ebp)  1012914696  [ $v2       <array 98 of <array 51 of <array 47 of <array 56 of <array 77 of <char>>>>>> %ebp-1012914720 ]
    #   -1091786712(%ebp)  78871992  [ $v3       <array 69 of <array 42 of <array 9 of <array 12 of <array 63 of <int>>>>>> %ebp-1091786712 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1091786700, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $272946675, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1012914720(%ebp)    # local array 'v2': 5 dimensions
    movl    $98,-1012914716(%ebp)   #   dimension 1: 98 elements
    movl    $51,-1012914712(%ebp)   #   dimension 2: 51 elements
    movl    $47,-1012914708(%ebp)   #   dimension 3: 47 elements
    movl    $56,-1012914704(%ebp)   #   dimension 4: 56 elements
    movl    $77,-1012914700(%ebp)   #   dimension 5: 77 elements
    movl    $5,-1091786712(%ebp)    # local array 'v3': 5 dimensions
    movl    $69,-1091786708(%ebp)   #   dimension 1: 69 elements
    movl    $42,-1091786704(%ebp)   #   dimension 2: 42 elements
    movl    $9,-1091786700(%ebp)    #   dimension 3: 9 elements
    movl    $12,-1091786696(%ebp)   #   dimension 4: 12 elements
    movl    $63,-1091786692(%ebp)   #   dimension 5: 63 elements

    # function body
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, -23(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   2:     goto   3_while_body
    leal    -1091786712(%ebp), %eax #   3:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  3 <- t10
    pushl   %eax                   
    movl    $33797, %eax            #   5:     param  2 <- 33797
    pushl   %eax                   
    leal    -1012914720(%ebp), %eax #   6:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  1 <- t11
    pushl   %eax                   
    movl    $80187, %eax            #   8:     param  0 <- 80187
    pushl   %eax                   
    call    f1                      #   9:     call   t12 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  10:     if     t12 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #  11:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  15:     call   t13 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1091786700, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 69 of <array 42 of <array 9 of <array 12 of <array 63 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 98 of <array 51 of <array 47 of <array 56 of <array 77 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <bool> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
l_test_5_while_cond:
    movl    $100, %eax              #   3:     if     100 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
    call    dummyINTfunc            #   8:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_1                #   9:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
l_test_11_while_cond:
    movl    $100, %eax              #  14:     if     100 > 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_12_while_body   
    jmp     l_test_10               #  15:     goto   10
l_test_12_while_body:
    call    dummyBOOLfunc           #  17:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_11_while_cond    #  18:     goto   11_while_cond
l_test_10:
    leal    v1, %eax                #  20:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  3 <- t2
    pushl   %eax                   
    movl    $64544, %eax            #  22:     add    t3 <- 64544, 38766
    movl    $38766, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t4 <- t3, 39578
    movl    $39578, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     sub    t5 <- t4, 4948
    movl    $4948, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     param  2 <- t5
    pushl   %eax                   
    leal    v0, %eax                #  26:     &()    t6 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  27:     param  1 <- t6
    pushl   %eax                   
    movl    $55540, %eax            #  28:     mul    t7 <- 55540, 39692
    movl    $39692, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     mul    t8 <- t7, 75360
    movl    $75360, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  31:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -49(%ebp)         

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v0:                                 # <array 98 of <array 51 of <array 47 of <array 56 of <array 77 of <char>>>>>>
    .long    5
    .long   98
    .long   51
    .long   47
    .long   56
    .long   77
    .skip 1012914672
v1:                                 # <array 69 of <array 42 of <array 9 of <array 12 of <array 63 of <int>>>>>>
    .long    5
    .long   69
    .long   42
    .long    9
    .long   12
    .long   63
    .skip 78871968








    # end of global data section
    #-----------------------------------------

    .end
##################################################
