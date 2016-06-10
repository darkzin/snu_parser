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
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t1
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t17      <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 9 of <array 1 of <array 10 of <array 5 of <char>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v4       <char> %ebp-81 ]

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
    movl    $98, %eax               #   1:     if     98 = 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    movl    $1, %eax                #   7:     if     1 # 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_while_body:
    movl    $50302, %eax            #  10:     return 50302
    jmp     l_f1_exit              
    movl    $41386, %eax            #  11:     if     41386 < 36278 goto 10_if_true
    movl    $36278, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_14_while_cond:
    movl    $100, %eax              #  18:     if     100 # 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_15_while_body     
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  21:     goto   14_while_cond
l_f1_13:
l_f1_18_while_cond:
    movl    $20692, %eax            #  24:     if     20692 > 98460 goto 19_while_body
    movl    $98460, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_19_while_body     
    jmp     l_f1_17                 #  25:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  27:     goto   18_while_cond
l_f1_17:
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  31:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $16782, %eax            #  32:     mul    t2 <- 16782, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t3 <- t2, 18866
    movl    $18866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  34:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  35:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  36:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  37:     mul    t5 <- t3, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     add    t6 <- t5, 86802
    movl    $86802, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  39:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  40:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  41:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  42:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  43:     add    t9 <- t8, 56846
    movl    $56846, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  44:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  45:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  46:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -80(%ebp), %eax         #  47:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  48:     add    t12 <- t11, 26957
    movl    $26957, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  49:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    20(%ebp), %eax          #  50:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  51:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  52:     add    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  53:     add    t16 <- v3, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $99, %eax               #  54:     assign @t16 <- 99
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_5_while_cond       #  55:     goto   5_while_cond
l_f1_4:
l_f1_23_while_cond:
    movl    $100, %eax              #  58:     if     100 # 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_24_while_body     
    jmp     l_f1_22                 #  59:     goto   22
l_f1_24_while_body:
l_f1_27_while_cond:
    call    dummyCHARfunc           #  62:     call   t17 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  63:     if     t17 # 100 goto 28_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_28_while_body     
    jmp     l_f1_26                 #  64:     goto   26
l_f1_28_while_body:
    jmp     l_f1_27_while_cond      #  66:     goto   27_while_cond
l_f1_26:
    jmp     l_f1_23_while_cond      #  68:     goto   23_while_cond
l_f1_22:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]

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
    movl    $67797, %eax            #   0:     sub    t1 <- 67797, 21871
    movl    $21871, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 7174
    movl    $7174, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $93479, %eax            #   2:     if     93479 >= t2 goto 4_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   3:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   5:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #   8:     goto   0
l_f2_0:
l_f2_8_while_cond:
    jmp     l_f2_9_while_body       #  11:     goto   9_while_body
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  13:     goto   8_while_cond
    movl    $20138, %eax            #  14:     add    t3 <- 20138, 8022
    movl    $8022, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     assign v0 <- t3
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
l_test_5_while_cond:
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    movl    $97, %eax               #   8:     assign v1 <- 97
    movb    %al, v1                
    call    ReadInt                 #   9:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
