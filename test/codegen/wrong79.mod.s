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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 6 of <array 8 of <array 8 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 9 of <array 4 of <array 5 of <array 10 of <bool>>>>>>> %ebp+16 ]

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
l_f0_2_while_cond:
    movl    $89748, %eax            #   2:     add    t0 <- 89748, 85653
    movl    $85653, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $76302, %eax            #   3:     if     76302 # t0 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 9 of <array 8 of <array 10 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 9 of <array 10 of <array 3 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 6 of <array 6 of <array 9 of <array 5 of <char>>>>>>> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
l_f1_7_while_cond:
    jmp     l_f1_6                  #   7:     goto   6
l_f1_10_while_cond:
    movl    $97, %eax               #   9:     if     97 > 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_11_while_body     
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
l_f1_9:
l_f1_14_while_cond:
    movl    $88214, %eax            #  15:     if     88214 <= 59192 goto 15_while_body
    movl    $59192, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_15_while_body     
    jmp     l_f1_13                 #  16:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  18:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_7_while_cond       #  20:     goto   7_while_cond
l_f1_6:
    call    dummyCHARfunc           #  22:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -73(%ebp)   1  [ $t22      <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t23      <bool> %ebp-74 ]
    #    -80(%ebp)   4  [ $t3       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t4       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 3 of <array 2 of <array 4 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #   -105(%ebp)   1  [ $v3       <bool> %ebp-105 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $55176, %eax            #   0:     if     55176 # 63256 goto 1_if_true
    movl    $63256, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $36979, %eax            #   3:     add    t0 <- 36979, 57436
    movl    $57436, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     add    t1 <- t0, 90789
    movl    $90789, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t2 <- t1, 60730
    movl    $60730, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   6:     sub    t3 <- t2, 42404
    movl    $42404, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   7:     if     t3 # 14814 goto 5
    movl    $14814, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #   8:     goto   6
l_f2_5:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -81(%ebp)         
l_f2_7:
    movzbl  -81(%ebp), %eax         #  15:     return t4
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  16:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $13803, %eax            #  19:     if     13803 = 92833 goto 10_if_true
    movl    $92833, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  20:     goto   11_if_false
l_f2_10_if_true:
    call    ReadInt                 #  22:     call   t5 <- ReadInt
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    $9876, %eax             #  26:     mul    t7 <- 9876, t6
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  27:     add    t8 <- t7, 74401
    movl    $74401, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  31:     mul    t10 <- t8, t9
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     add    t11 <- t10, 45058
    movl    $45058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  36:     mul    t13 <- t11, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     add    t14 <- t13, 41403
    movl    $41403, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  40:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  41:     mul    t16 <- t14, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     add    t17 <- t16, 13112
    movl    $13112, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  43:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  44:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  45:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  46:     add    t20 <- t18, t19
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  47:     add    t21 <- v1, t20
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $94449, %eax            #  48:     assign @t21 <- 94449
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_9                  #  49:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_16                 #  52:     goto   16
    call    dummyBOOLfunc           #  53:     call   t22 <- dummyBOOLfunc
    movb    %al, -73(%ebp)         
    movzbl  -73(%ebp), %eax         #  54:     if     t22 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16                
    jmp     l_f2_17                 #  55:     goto   17
l_f2_16:
    movl    $1, %eax                #  57:     assign t23 <- 1
    movb    %al, -74(%ebp)         
    jmp     l_f2_18                 #  58:     goto   18
l_f2_17:
    movl    $0, %eax                #  60:     assign t23 <- 0
    movb    %al, -74(%ebp)         
l_f2_18:
    movzbl  -74(%ebp), %eax         #  62:     assign v3 <- t23
    movb    %al, -105(%ebp)        

l_f2_exit:
    # epilogue
    addl    $96, %esp               # remove locals
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
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    movl    $30536, %eax            #   3:     assign v0 <- 30536
    movl    %eax, v0               
    jmp     l_test_2                #   4:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_10_while_body    #  10:     goto   10_while_body
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
