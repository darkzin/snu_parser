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
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t4       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 7 of <array 8 of <array 5 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #   -101(%ebp)   1  [ $v1       <bool> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
    jmp     l_f0_1_if_true          #   2:     goto   1_if_true
l_f0_1_if_true:
    call    ReadInt                 #   4:     call   t3 <- ReadInt
    movl    %eax, -76(%ebp)        
    jmp     l_f0_0                  #   5:     goto   0
l_f0_0:
    jmp     l_f0_8                  #   7:     goto   8
    jmp     l_f0_8                  #   8:     goto   8
l_f0_8:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f0_10                 #  11:     goto   10
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -77(%ebp)         
l_f0_10:
    movzbl  -77(%ebp), %eax         #  14:     return t4
    jmp     l_f0_exit              
    call    ReadInt                 #  15:     call   t5 <- ReadInt
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  16:     div    t6 <- t5, 18808
    movl    $18808, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  17:     mul    t7 <- t6, 76315
    movl    $76315, %ebx           
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  18:     div    t8 <- t7, 56156
    movl    $56156, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  22:     mul    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 11823
    movl    $11823, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t14 <- t13, 41439
    movl    $41439, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  32:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t17 <- t16, 81638
    movl    $81638, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  38:     add    t20 <- t19, 21411
    movl    $21411, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  39:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  41:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  42:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  43:     add    t24 <- v0, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $0, %eax                #  44:     assign @t24 <- 0
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 7 of <array 8 of <array 5 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 7 of <array 7 of <array 8 of <array 5 of <array 1 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <char> %ebp-30 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -2016(%ebp)  1984  [ $v3       <array 7 of <array 7 of <array 8 of <array 5 of <array 1 of <bool>>>>>> %ebp-2016 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2004, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $501, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2016(%ebp)          # local array 'v3': 5 dimensions
    movl    $7,-2012(%ebp)          #   dimension 1: 7 elements
    movl    $7,-2008(%ebp)          #   dimension 2: 7 elements
    movl    $8,-2004(%ebp)          #   dimension 3: 8 elements
    movl    $5,-2000(%ebp)          #   dimension 4: 5 elements
    movl    $1,-1996(%ebp)          #   dimension 5: 1 elements

    # function body
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_4                 
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   9:     return t3
    jmp     l_f1_exit              
    movl    $0, %eax                #  10:     return 0
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #  12:     assign v2 <- 1
    movb    %al, 16(%ebp)          
    movl    $3330, %eax             #  13:     param  0 <- 3330
    pushl   %eax                   
    call    WriteInt                #  14:     call   WriteInt
    addl    $4, %esp               
    movl    $0, %eax                #  15:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  16:     goto   1_while_cond
    leal    -2016(%ebp), %eax       #  17:     &()    t5 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  19:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  20:     if     t6 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  21:     goto   15_if_false
l_f1_14_if_true:
    leal    -2016(%ebp), %eax       #  23:     &()    t7 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  25:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_f1_13                 #  26:     goto   13
l_f1_15_if_false:
l_f1_13:
l_f1_18_while_cond:
    call    dummyCHARfunc           #  30:     call   t9 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movl    $100, %eax              #  31:     if     100 <= t9 goto 19_while_body
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_19_while_body     
    jmp     l_f1_17                 #  32:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  34:     goto   18_while_cond
l_f1_17:

l_f1_exit:
    # epilogue
    addl    $2004, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 5 of <array 6 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 4 of <array 5 of <array 3 of <array 9 of <int>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]
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
l_f2_1_while_cond:
l_f2_4_while_cond:
    movl    $97, %eax               #   2:     if     97 < 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_5_while_body      
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_while_body:
    movl    $0, %eax                #   5:     if     0 # 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_8                 
    jmp     l_f2_9                  #   6:     goto   9
l_f2_8:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_10                 #   9:     goto   10
l_f2_9:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_10:
    movzbl  -13(%ebp), %eax         #  13:     assign v2 <- t3
    movb    %al, -14(%ebp)         
    jmp     l_f2_4_while_cond       #  14:     goto   4_while_cond
l_f2_3:
    jmp     l_f2_1_while_cond       #  16:     goto   1_while_cond
l_f2_13_while_cond:
    movl    $98, %eax               #  18:     if     98 <= 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_14_while_body     
    jmp     l_f2_12                 #  19:     goto   12
l_f2_14_while_body:
l_f2_17_while_cond:
    movl    $97, %eax               #  22:     if     97 > 100 goto 18_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_18_while_body     
    jmp     l_f2_16                 #  23:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  25:     goto   17_while_cond
l_f2_16:
    movl    $98, %eax               #  27:     assign v3 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f2_13_while_cond      #  28:     goto   13_while_cond
l_f2_12:
    movl    $5146, %eax             #  30:     assign v4 <- 5146
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    jmp     l_test_exit            
    movl    $45219, %eax            #   1:     add    t0 <- 45219, 95742
    movl    $95742, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 > 96745 goto 2_if_true
    movl    $96745, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
