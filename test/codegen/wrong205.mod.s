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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t18      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 2 of <array 5 of <array 3 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 6 of <array 2 of <array 8 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 2 of <array 7 of <array 2 of <array 10 of <char>>>>>>> %ebp+20 ]
    #    -85(%ebp)   1  [ $v4       <bool> %ebp-85 ]
    #    -92(%ebp)   4  [ $v5       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_6_while_cond:
    movl    $97, %eax               #   5:     if     97 = 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
l_f0_5:
    movl    $99, %eax               #  10:     if     99 <= 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
l_f0_10_if_true:
    movl    $6777, %eax             #  13:     if     6777 > 79830 goto 14
    movl    $79830, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14                
    jmp     l_f0_15                 #  14:     goto   15
l_f0_14:
    movl    $1, %eax                #  16:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  17:     goto   16
l_f0_15:
    movl    $0, %eax                #  19:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $7980, %eax             #  24:     mul    t3 <- 7980, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  25:     add    t4 <- t3, 81772
    movl    $81772, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  29:     mul    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  30:     add    t7 <- t6, 98584
    movl    $98584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  34:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  35:     add    t10 <- t9, 36352
    movl    $36352, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  39:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  40:     add    t13 <- t12, 95025
    movl    $95025, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  41:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  42:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  43:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  44:     add    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  45:     add    t17 <- v1, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -13(%ebp), %eax         #  46:     assign @t17 <- t1
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $98, %eax               #  47:     return 98
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  48:     call   t18 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    movl    $84952, %eax            #  49:     assign v5 <- 84952
    movl    %eax, -92(%ebp)        
    jmp     l_f0_9                  #  50:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $77026, %eax            #   3:     return 77026
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_8                  #   5:     goto   8
l_f1_8:
    jmp     l_f1_6_while_cond       #   7:     goto   6_while_cond
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
    movl    $1, %eax                #   9:     assign v0 <- 1
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 2 of <array 7 of <array 2 of <array 10 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <array 6 of <array 2 of <array 8 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 2 of <array 5 of <array 3 of <array 8 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 8 of <array 2 of <array 5 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 2 of <array 6 of <array 3 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -1972(%ebp)  1944  [ $v3       <array 8 of <array 2 of <array 5 of <array 3 of <array 8 of <bool>>>>>> %ebp-1972 ]
    #   -2956(%ebp)  984  [ $v4       <array 5 of <array 6 of <array 2 of <array 8 of <array 2 of <bool>>>>>> %ebp-2956 ]
    #   -5500(%ebp)  2544  [ $v5       <array 9 of <array 2 of <array 7 of <array 2 of <array 10 of <char>>>>>> %ebp-5500 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5488, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1372, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1972(%ebp)          # local array 'v3': 5 dimensions
    movl    $8,-1968(%ebp)          #   dimension 1: 8 elements
    movl    $2,-1964(%ebp)          #   dimension 2: 2 elements
    movl    $5,-1960(%ebp)          #   dimension 3: 5 elements
    movl    $3,-1956(%ebp)          #   dimension 4: 3 elements
    movl    $8,-1952(%ebp)          #   dimension 5: 8 elements
    movl    $5,-2956(%ebp)          # local array 'v4': 5 dimensions
    movl    $5,-2952(%ebp)          #   dimension 1: 5 elements
    movl    $6,-2948(%ebp)          #   dimension 2: 6 elements
    movl    $2,-2944(%ebp)          #   dimension 3: 2 elements
    movl    $8,-2940(%ebp)          #   dimension 4: 8 elements
    movl    $2,-2936(%ebp)          #   dimension 5: 2 elements
    movl    $5,-5500(%ebp)          # local array 'v5': 5 dimensions
    movl    $9,-5496(%ebp)          #   dimension 1: 9 elements
    movl    $2,-5492(%ebp)          #   dimension 2: 2 elements
    movl    $7,-5488(%ebp)          #   dimension 3: 7 elements
    movl    $2,-5484(%ebp)          #   dimension 4: 2 elements
    movl    $10,-5480(%ebp)         #   dimension 5: 10 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -5500(%ebp), %eax       #   5:     &()    t1 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  3 <- t1
    pushl   %eax                   
    movl    $98, %eax               #   7:     param  2 <- 98
    pushl   %eax                   
    leal    -2956(%ebp), %eax       #   8:     &()    t2 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  1 <- t2
    pushl   %eax                   
    leal    -1972(%ebp), %eax       #  10:     &()    t3 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  12:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  13:     return t4
    jmp     l_f2_exit              
    movl    $100, %eax              #  14:     return 100
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $5488, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    movl    $97, %eax               #   2:     assign v0 <- 97
    movb    %al, v0                
l_test_5_while_cond:
    movl    $30620, %eax            #   4:     if     30620 = 38866 goto 6_while_body
    movl    $38866, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
l_test_9_while_cond:
    movl    $4105, %eax             #  12:     if     4105 > 24015 goto 10_while_body
    movl    $24015, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  13:     goto   8
l_test_10_while_body:
    movl    $1, %eax                #  15:     if     1 = 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  16:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  18:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_9_while_cond     #  21:     goto   9_while_cond
l_test_8:
    movl    $94499, %eax            #  23:     if     94499 >= 81552 goto 17_if_true
    movl    $81552, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_17_if_true      
    jmp     l_test_18_if_false      #  24:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_22_if_false      #  26:     goto   22_if_false
    jmp     l_test_20               #  27:     goto   20
l_test_22_if_false:
l_test_20:
l_test_24_while_cond:
    jmp     l_test_23               #  31:     goto   23
    jmp     l_test_24_while_cond    #  32:     goto   24_while_cond
l_test_23:
l_test_27_while_cond:
    movl    $100, %eax              #  35:     if     100 <= 99 goto 28_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_28_while_body   
    jmp     l_test_26               #  36:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  38:     goto   27_while_cond
l_test_26:
    call    dummyBOOLfunc           #  40:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_16               #  41:     goto   16
l_test_18_if_false:
l_test_16:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
