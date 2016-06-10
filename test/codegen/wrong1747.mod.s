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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_0:
l_f0_8_while_cond:
    movl    $98, %eax               #   6:     if     98 <= 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   9:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
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
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 5 of <char>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t4       <bool> %ebp-69 ]
    #    -70(%ebp)   1  [ $t5       <char> %ebp-70 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 32 of <array 68 of <array 50 of <array 29 of <array 13 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 40 of <array 73 of <array 79 of <array 40 of <array 40 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -68(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    movl    $74410, %eax            #   3:     if     74410 # 52035 goto 5
    movl    $52035, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -69(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -69(%ebp)         
l_f1_7:
    movzbl  -69(%ebp), %eax         #  11:     assign v2 <- t4
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -70(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #  14:     goto   11_while_cond
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $83141, %eax            #  18:     mul    t7 <- 83141, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  19:     add    t8 <- t7, 35611
    movl    $35611, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  23:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  24:     add    t11 <- t10, 22922
    movl    $22922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  28:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     add    t14 <- t13, 3071
    movl    $3071, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  33:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     add    t17 <- t16, 19656
    movl    $19656, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  35:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  37:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  38:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t21 <- v0, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $100, %eax              #  40:     assign @t21 <- 100
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_2_while_cond       #  41:     goto   2_while_cond
l_f1_1:
    movl    $99, %eax               #  43:     if     99 # 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  44:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  46:     goto   17
l_f1_19_if_false:
l_f1_17:
    leal    _str_1, %eax            #  49:     &()    t22 <- _str_1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  50:     param  0 <- t22
    pushl   %eax                   
    call    WriteStr                #  51:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_14                 #  52:     goto   14
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 40 of <array 73 of <array 79 of <array 40 of <array 40 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 32 of <array 68 of <array 50 of <array 29 of <array 13 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 60 of <array 74 of <array 48 of <array 59 of <array 25 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 81 of <array 46 of <array 16 of <array 55 of <array 74 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 31 of <array 77 of <array 81 of <array 9 of <array 67 of <int>>>>>>> %ebp+16 ]
    #   -41017660(%ebp)  41017624  [ $v3       <array 32 of <array 68 of <array 50 of <array 29 of <array 13 of <char>>>>>> %ebp-41017660 ]
    #   -1517369684(%ebp)  1476352024  [ $v4       <array 40 of <array 73 of <array 79 of <array 40 of <array 40 of <int>>>>>> %ebp-1517369684 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1517369672, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $379342418, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-41017660(%ebp)      # local array 'v3': 5 dimensions
    movl    $32,-41017656(%ebp)     #   dimension 1: 32 elements
    movl    $68,-41017652(%ebp)     #   dimension 2: 68 elements
    movl    $50,-41017648(%ebp)     #   dimension 3: 50 elements
    movl    $29,-41017644(%ebp)     #   dimension 4: 29 elements
    movl    $13,-41017640(%ebp)     #   dimension 5: 13 elements
    movl    $5,-1517369684(%ebp)    # local array 'v4': 5 dimensions
    movl    $40,-1517369680(%ebp)   #   dimension 1: 40 elements
    movl    $73,-1517369676(%ebp)   #   dimension 2: 73 elements
    movl    $79,-1517369672(%ebp)   #   dimension 3: 79 elements
    movl    $40,-1517369668(%ebp)   #   dimension 4: 40 elements
    movl    $40,-1517369664(%ebp)   #   dimension 5: 40 elements

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $99, %eax               #   4:     if     99 = 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $19327, %eax            #  10:     return 19327
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
l_f2_10_while_cond:
    movl    $69721, %eax            #  14:     if     69721 < 65495 goto 11_while_body
    movl    $65495, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_while_body:
    movl    $99, %eax               #  17:     param  3 <- 99
    pushl   %eax                   
    movl    $0, %eax                #  18:     param  2 <- 0
    pushl   %eax                   
    leal    -1517369684(%ebp), %eax #  19:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     param  1 <- t3
    pushl   %eax                   
    leal    -41017660(%ebp), %eax   #  21:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  23:     call   f1
    addl    $16, %esp              
    jmp     l_f2_14                 #  24:     goto   14
l_f2_14:
    jmp     l_f2_10_while_cond      #  26:     goto   10_while_cond
l_f2_9:
    movl    $80668, %eax            #  28:     add    t5 <- 80668, 67341
    movl    $67341, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     sub    t6 <- t5, 45804
    movl    $45804, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     sub    t7 <- t6, 68712
    movl    $68712, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     sub    t8 <- t7, 52189
    movl    $52189, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1517369672, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $99, %eax               #   0:     if     99 <= 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_7_while_cond:
    call    dummyBOOLfunc           #  11:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     if     t2 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  15:     goto   7_while_cond
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
