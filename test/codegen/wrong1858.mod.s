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
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t26      <char> %ebp-81 ]
    #    -88(%ebp)   4  [ $t3       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t4       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t5       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 38 of <array 59 of <array 30 of <array 3 of <array 13 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 98 of <array 42 of <array 85 of <array 26 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 38 of <array 27 of <array 95 of <array 68 of <char>>>>>>> %ebp+16 ]
    #   -113(%ebp)   1  [ $v3       <char> %ebp-113 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97, %eax               #   0:     if     97 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $98, %eax               #   3:     return 98
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
l_f0_9_while_cond:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  10:     if     t2 < 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_10_while_body     
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  13:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  15:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $38956, %eax            #  21:     mul    t4 <- 38956, t3
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $14703, %eax            #  22:     div    t5 <- 14703, 25953
    movl    $25953, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  23:     sub    t6 <- t5, 88852
    movl    $88852, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  24:     sub    t7 <- t6, 85687
    movl    $85687, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  25:     add    t8 <- t7, 10812
    movl    $10812, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  26:     add    t9 <- t8, 68885
    movl    $68885, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  27:     add    t10 <- t9, 20393
    movl    $20393, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     sub    t11 <- t10, 96060
    movl    $96060, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -92(%ebp), %eax         #  29:     add    t12 <- t4, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  33:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     add    t15 <- t14, 64735
    movl    $64735, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  38:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  39:     add    t18 <- t17, 82237
    movl    $82237, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  40:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  43:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t21 <- t20, 64179
    movl    $64179, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  45:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  47:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  48:     add    t24 <- t22, t23
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  49:     add    t25 <- v2, t24
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $100, %eax              #  50:     assign @t25 <- 100
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  51:     call   t26 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movzbl  -81(%ebp), %eax         #  52:     return t26
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $104, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 86 of <array 29 of <array 51 of <array 25 of <array 100 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 26 of <array 87 of <array 89 of <array 31 of <array 20 of <char>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_f1_2_while_cond:
    movl    $61671, %eax            #   4:     add    t3 <- 61671, 13848
    movl    $13848, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $72963, %eax            #   5:     if     72963 >= t3 goto 3_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   9:     goto   5
    jmp     l_f1_6_while_cond       #  10:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_2_while_cond       #  12:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_10_if_false        #  14:     goto   10_if_false
    jmp     l_f1_8                  #  15:     goto   8
l_f1_10_if_false:
l_f1_8:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 4 of <array 93 of <array 72 of <array 59 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 86 of <array 5 of <array 87 of <array 21 of <char>>>>>>> %ebp+16 ]
    #    -19(%ebp)   1  [ $v3       <bool> %ebp-19 ]

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
    movl    $21894, %eax            #   0:     add    t2 <- 21894, 33806
    movl    $33806, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t2 >= 65338 goto 1
    movl    $65338, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v3 <- t3
    movb    %al, -19(%ebp)         
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    call    WriteLn                 #  11:     call   WriteLn

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
l_test_1_while_cond:
    movl    $85356, %eax            #   1:     if     85356 <= 89603 goto 2_while_body
    movl    $89603, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
    call    dummyBOOLfunc           #   6:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_10_while_cond:
    call    dummyBOOLfunc           #  11:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     if     t1 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  13:     goto   9
l_test_11_while_body:
    movl    $98, %eax               #  15:     assign v0 <- 98
    movb    %al, v0                
    movl    $0, %eax                #  16:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_16_if_false      #  17:     goto   16_if_false
    jmp     l_test_14               #  18:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_10_while_cond    #  21:     goto   10_while_cond
l_test_9:

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
