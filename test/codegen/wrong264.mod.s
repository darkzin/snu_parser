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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 2 of <array 4 of <array 2 of <array 5 of <int>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     return t2
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   4:     return t3
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   2:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <ptr(4) to <array 2 of <array 2 of <array 4 of <array 2 of <array 5 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t20      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t21      <char> %ebp-62 ]
    #    -63(%ebp)   1  [ $t22      <bool> %ebp-63 ]
    #    -64(%ebp)   1  [ $t23      <bool> %ebp-64 ]
    #    -65(%ebp)   1  [ $t24      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t25      <bool> %ebp-66 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 9 of <array 6 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 7 of <array 5 of <array 1 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 3 of <array 7 of <array 3 of <array 5 of <int>>>>>>> %ebp+20 ]
    #   -100(%ebp)   4  [ $v4       <int> %ebp-100 ]
    #   -764(%ebp)  664  [ $v5       <array 2 of <array 2 of <array 4 of <array 2 of <array 5 of <int>>>>>> %ebp-764 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $752, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $188, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-764(%ebp)           # local array 'v5': 5 dimensions
    movl    $2,-760(%ebp)           #   dimension 1: 2 elements
    movl    $2,-756(%ebp)           #   dimension 2: 2 elements
    movl    $4,-752(%ebp)           #   dimension 3: 4 elements
    movl    $2,-748(%ebp)           #   dimension 4: 2 elements
    movl    $5,-744(%ebp)           #   dimension 5: 5 elements

    # function body
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $36731, %eax            #   1:     add    t2 <- 36731, t1
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   3:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   4:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $7203, %eax             #   5:     mul    t4 <- 7203, t3
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   6:     add    t5 <- t4, 25442
    movl    $25442, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  10:     mul    t7 <- t5, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  11:     add    t8 <- t7, 1055
    movl    $1055, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  15:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t11 <- t10, 56841
    movl    $56841, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t14 <- t13, 88063
    movl    $88063, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  24:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  26:     add    t18 <- v3, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -60(%ebp), %eax         #  27:     assign @t18 <- t2
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    leal    -764(%ebp), %eax        #  28:     &()    t19 <- v5
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  29:     param  2 <- t19
    pushl   %eax                   
    jmp     l_f2_6                  #  30:     goto   6
    jmp     l_f2_7                  #  31:     goto   7
l_f2_6:
    movl    $1, %eax                #  33:     assign t20 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f2_8                  #  34:     goto   8
l_f2_7:
    movl    $0, %eax                #  36:     assign t20 <- 0
    movb    %al, -61(%ebp)         
l_f2_8:
    movzbl  -61(%ebp), %eax         #  38:     param  1 <- t20
    pushl   %eax                   
    movl    $100, %eax              #  39:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  40:     call   t21 <- f0
    addl    $12, %esp              
    movb    %al, -62(%ebp)         
    movl    $98, %eax               #  41:     if     98 < t21 goto 2
    movzbl  -62(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2                 
    jmp     l_f2_3                  #  42:     goto   3
l_f2_2:
    movl    $1, %eax                #  44:     assign t22 <- 1
    movb    %al, -63(%ebp)         
    jmp     l_f2_4                  #  45:     goto   4
l_f2_3:
    movl    $0, %eax                #  47:     assign t22 <- 0
    movb    %al, -63(%ebp)         
l_f2_4:
    movzbl  -63(%ebp), %eax         #  49:     return t22
    jmp     l_f2_exit              
    jmp     l_f2_18                 #  50:     goto   18
    jmp     l_f2_18                 #  51:     goto   18
    jmp     l_f2_18                 #  52:     goto   18
    movl    $1, %eax                #  53:     assign t23 <- 1
    movb    %al, -64(%ebp)         
    jmp     l_f2_19                 #  54:     goto   19
l_f2_18:
    movl    $0, %eax                #  56:     assign t23 <- 0
    movb    %al, -64(%ebp)         
l_f2_19:
    jmp     l_f2_23                 #  58:     goto   23
    jmp     l_f2_23                 #  59:     goto   23
    jmp     l_f2_23                 #  60:     goto   23
    jmp     l_f2_24                 #  61:     goto   24
l_f2_23:
    movl    $1, %eax                #  63:     assign t24 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_25                 #  64:     goto   25
l_f2_24:
    movl    $0, %eax                #  66:     assign t24 <- 0
    movb    %al, -65(%ebp)         
l_f2_25:
    movzbl  -64(%ebp), %eax         #  68:     if     t23 # t24 goto 13
    movzbl  -65(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_13                
    jmp     l_f2_14                 #  69:     goto   14
l_f2_13:
    movl    $1, %eax                #  71:     assign t25 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f2_15                 #  72:     goto   15
l_f2_14:
    movl    $0, %eax                #  74:     assign t25 <- 0
    movb    %al, -66(%ebp)         
l_f2_15:
    movzbl  -66(%ebp), %eax         #  76:     return t25
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $752, %esp              # remove locals
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
    movl    $0, %eax                #   0:     if     0 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $61607, %eax            #   3:     if     61607 > 7140 goto 5
    movl    $7140, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_5               
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   7:     goto   7
l_test_6:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
l_test_10_while_cond:
    movl    $54731, %eax            #  13:     if     54731 = 33880 goto 11_while_body
    movl    $33880, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  14:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
    movl    $69032, %eax            #  18:     assign v1 <- 69032
    movl    %eax, v1               
    jmp     l_test_0                #  19:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $100, %eax              #  23:     assign v2 <- 100
    movb    %al, v2                

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
