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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t3       <char> %ebp-69 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 57 of <array 94 of <array 12 of <array 11 of <array 82 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -97(%ebp)   1  [ $v2       <bool> %ebp-97 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f0_3:
    movzbl  -53(%ebp), %eax         #   8:     assign v2 <- t2
    movb    %al, -97(%ebp)         
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #  10:     return t3
    jmp     l_f0_exit              
    movl    $80267, %eax            #  11:     div    t4 <- 80267, 15928
    movl    $15928, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  12:     mul    t5 <- t4, 7265
    movl    $7265, %ebx            
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $17885, %eax            #  13:     sub    t6 <- 17885, 1048
    movl    $1048, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  17:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  18:     add    t9 <- t8, 10289
    movl    $10289, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  22:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     add    t12 <- t11, 92086
    movl    $92086, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  27:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     add    t15 <- t14, 58112
    movl    $58112, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  32:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     add    t18 <- t17, 869
    movl    $869, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  34:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  36:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  37:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t22 <- v0, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -80(%ebp), %eax         #  39:     assign @t22 <- t5
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    WriteLn                 #   1:     call   WriteLn
    movl    $42994, %eax            #   2:     sub    t2 <- 42994, 87890
    movl    $87890, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t3 <- t2, 775
    movl    $775, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $39247, %eax            #   4:     if     39247 < t3 goto 5
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_7                  #   8:     goto   7
l_f1_6:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_7:
    movzbl  -21(%ebp), %eax         #  12:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  16:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    call    ReadInt                 #  17:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    call    WriteLn                 #  18:     call   WriteLn
    jmp     l_f1_10                 #  19:     goto   10
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 91 of <array 57 of <array 14 of <array 41 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 32 of <array 32 of <array 1 of <array 69 of <array 60 of <char>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v4       <bool> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $89840, %eax            #   3:     div    t3 <- 89840, 79653
    movl    $79653, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $25514, %eax            #   4:     if     25514 > t3 goto 3_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
    movl    $99, %eax               #   7:     if     99 = 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   8:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $99, %eax               #  13:     return 99
    jmp     l_f2_exit              
l_f2_11_while_cond:
    jmp     l_f2_11_while_cond      #  15:     goto   11_while_cond
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
    movl    $40812, %eax            #  18:     if     40812 <= 10230 goto 14
    movl    $10230, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_14                
    jmp     l_f2_15                 #  19:     goto   15
l_f2_14:
    movl    $1, %eax                #  21:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_16                 #  22:     goto   16
l_f2_15:
    movl    $0, %eax                #  24:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f2_16:
    movzbl  -21(%ebp), %eax         #  26:     assign v4 <- t4
    movb    %al, -22(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    movl    $0, %eax                #   0:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #   1:     call   t0 <- f1
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_1                #   4:     goto   1
l_test_1:
l_test_7_while_cond:
    jmp     l_test_6                #   7:     goto   6
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #   9:     goto   11_while_cond
    movl    $100, %eax              #  10:     if     100 = 100 goto 14
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_14              
    jmp     l_test_15               #  11:     goto   15
l_test_14:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_16               #  14:     goto   16
l_test_15:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_16:
    movzbl  -14(%ebp), %eax         #  18:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_7_while_cond     #  19:     goto   7_while_cond
l_test_6:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
