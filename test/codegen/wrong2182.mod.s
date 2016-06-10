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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t3       <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t4       <char> %ebp-78 ]
    #    -79(%ebp)   1  [ $t5       <char> %ebp-79 ]
    #    -80(%ebp)   1  [ $t6       <bool> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 28 of <array 17 of <array 50 of <array 45 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 51 of <array 20 of <array 76 of <array 39 of <array 37 of <bool>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v2       <bool> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $19938, %eax            #   0:     sub    t0 <- 19938, 74251
    movl    $74251, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 23802
    movl    $23802, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 <= 74467 goto 1_if_true
    movl    $74467, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   3:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_4                  #   5:     goto   4
l_f0_4:
    call    ReadInt                 #   7:     call   t2 <- ReadInt
    movl    %eax, -64(%ebp)        
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    jmp     l_f0_8                  #  12:     goto   8
l_f0_8:
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -78(%ebp)         
    call    dummyCHARfunc           #  15:     call   t5 <- dummyCHARfunc
    movb    %al, -79(%ebp)         
    movzbl  -78(%ebp), %eax         #  16:     if     t4 <= t5 goto 13
    movzbl  -79(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_13                
    jmp     l_f0_14                 #  17:     goto   14
l_f0_13:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -80(%ebp)         
    jmp     l_f0_15                 #  20:     goto   15
l_f0_14:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -80(%ebp)         
l_f0_15:
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $35081, %eax            #  27:     mul    t8 <- 35081, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  28:     add    t9 <- t8, 70366
    movl    $70366, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -92(%ebp), %eax         #  32:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     add    t12 <- t11, 34438
    movl    $34438, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  36:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  37:     mul    t14 <- t12, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  38:     add    t15 <- t14, 46676
    movl    $46676, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  41:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  42:     mul    t17 <- t15, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  43:     add    t18 <- t17, 9251
    movl    $9251, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  44:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  45:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  46:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  47:     add    t21 <- t19, t20
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  48:     add    t22 <- v0, t21
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -80(%ebp), %eax         #  49:     assign @t22 <- t6
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 51 of <array 20 of <array 76 of <array 39 of <array 37 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 28 of <array 17 of <array 50 of <array 45 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 46 of <array 63 of <array 60 of <array 27 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 67 of <array 63 of <array 30 of <array 22 of <int>>>>>>> %ebp+20 ]
    #   -2142056(%ebp)  2142024  [ $v4       <array 2 of <array 28 of <array 17 of <array 50 of <array 45 of <bool>>>>>> %ebp-2142056 ]
    #   -114003440(%ebp)  111861384  [ $v5       <array 51 of <array 20 of <array 76 of <array 39 of <array 37 of <bool>>>>>> %ebp-114003440 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $114003428, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28500857, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2142056(%ebp)       # local array 'v4': 5 dimensions
    movl    $2,-2142052(%ebp)       #   dimension 1: 2 elements
    movl    $28,-2142048(%ebp)      #   dimension 2: 28 elements
    movl    $17,-2142044(%ebp)      #   dimension 3: 17 elements
    movl    $50,-2142040(%ebp)      #   dimension 4: 50 elements
    movl    $45,-2142036(%ebp)      #   dimension 5: 45 elements
    movl    $5,-114003440(%ebp)     # local array 'v5': 5 dimensions
    movl    $51,-114003436(%ebp)    #   dimension 1: 51 elements
    movl    $20,-114003432(%ebp)    #   dimension 2: 20 elements
    movl    $76,-114003428(%ebp)    #   dimension 3: 76 elements
    movl    $39,-114003424(%ebp)    #   dimension 4: 39 elements
    movl    $37,-114003420(%ebp)    #   dimension 5: 37 elements

    # function body
    movl    $65564, %eax            #   0:     if     65564 <= 72340 goto 1_if_true
    movl    $72340, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyINTfunc            #   3:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $71550, %eax            #   4:     if     71550 = 89612 goto 6_if_true
    movl    $89612, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    WriteLn                 #  10:     call   WriteLn
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  14:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     return t1
    jmp     l_f1_exit              
    leal    -114003440(%ebp), %eax  #  16:     &()    t2 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  1 <- t2
    pushl   %eax                   
    leal    -2142056(%ebp), %eax    #  18:     &()    t3 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  20:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  21:     if     t4 < 97 goto 12
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_12                
    jmp     l_f1_13                 #  22:     goto   13
l_f1_12:
    movl    $1, %eax                #  24:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f1_14                 #  25:     goto   14
l_f1_13:
    movl    $0, %eax                #  27:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_f1_14:
    movzbl  -30(%ebp), %eax         #  29:     assign v2 <- t5
    movb    %al, 16(%ebp)          

l_f1_exit:
    # epilogue
    addl    $114003428, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -20(%ebp)   1  [ $v1       <char> %ebp-20 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   2:     assign v1 <- 98
    movb    %al, -20(%ebp)         
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_6_while_cond:
    jmp     l_f2_7_while_body       #   7:     goto   7_while_body
l_f2_7_while_body:
    movl    $98, %eax               #   9:     if     98 <= 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_11                
    jmp     l_f2_12                 #  10:     goto   12
l_f2_11:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_13                 #  13:     goto   13
l_f2_12:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f2_13:
    movzbl  -17(%ebp), %eax         #  17:     assign v0 <- t1
    movb    %al, 8(%ebp)           
    movl    $98, %eax               #  18:     if     98 <= 99 goto 16
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_16                
    jmp     l_f2_17                 #  19:     goto   17
l_f2_16:
    movl    $1, %eax                #  21:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_18                 #  22:     goto   18
l_f2_17:
    movl    $0, %eax                #  24:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f2_18:
    movzbl  -18(%ebp), %eax         #  26:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    movl    $39310, %eax            #  27:     if     39310 = 3597 goto 21
    movl    $3597, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_21                
    jmp     l_f2_22                 #  28:     goto   22
l_f2_21:
    movl    $1, %eax                #  30:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_23                 #  31:     goto   23
l_f2_22:
    movl    $0, %eax                #  33:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_f2_23:
    movzbl  -19(%ebp), %eax         #  35:     assign v0 <- t3
    movb    %al, 8(%ebp)           
    jmp     l_f2_6_while_cond       #  36:     goto   6_while_cond
    movl    $100, %eax              #  37:     if     100 <= 98 goto 26_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_26_if_true        
    jmp     l_f2_27_if_false        #  38:     goto   27_if_false
l_f2_26_if_true:
l_f2_30_while_cond:
    movl    $100, %eax              #  41:     if     100 # 98 goto 31_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_31_while_body     
    jmp     l_f2_29                 #  42:     goto   29
l_f2_31_while_body:
    jmp     l_f2_35_if_false        #  44:     goto   35_if_false
    jmp     l_f2_33                 #  45:     goto   33
l_f2_35_if_false:
l_f2_33:
    jmp     l_f2_30_while_cond      #  48:     goto   30_while_cond
l_f2_29:
    jmp     l_f2_25                 #  50:     goto   25
l_f2_27_if_false:
l_f2_25:

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    movl    $1, %eax                #   1:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
