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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   7:     return t4
    jmp     l_f0_exit              
    movl    $98, %eax               #   8:     if     98 # 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   9:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  11:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_11_while_cond:
    jmp     l_f0_12_while_body      #  15:     goto   12_while_body
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  17:     goto   11_while_cond

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 62 of <array 61 of <array 55 of <array 1 of <array 59 of <bool>>>>>>> %ebp+12 ]
    #    -30(%ebp)   1  [ $v2       <char> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $38613, %eax            #   0:     add    t4 <- 38613, 98028
    movl    $98028, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 38124
    movl    $38124, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 71035
    movl    $71035, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t7 <- t6, 6840
    movl    $6840, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $45377, %eax            #   4:     if     45377 <= t7 goto 1_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   5:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  10:     call   t8 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movl    $0, %eax                #  11:     if     0 # 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  12:     goto   7_if_false
l_f1_6_if_true:
l_f1_10_while_cond:
    movl    $79848, %eax            #  15:     if     79848 < 4255 goto 11_while_body
    movl    $4255, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  16:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  18:     goto   10_while_cond
l_f1_9:
    movl    $100, %eax              #  20:     assign v2 <- 100
    movb    %al, -30(%ebp)         
l_f1_15_while_cond:
    movl    $78930, %eax            #  22:     if     78930 <= 49019 goto 16_while_body
    movl    $49019, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_16_while_body     
    jmp     l_f1_14                 #  23:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  25:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_5                  #  27:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <ptr(4) to <array 62 of <array 61 of <array 55 of <array 1 of <array 59 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]
    #   -12272676(%ebp)  12272614  [ $v0       <array 62 of <array 61 of <array 55 of <array 1 of <array 59 of <bool>>>>>> %ebp-12272676 ]
    #   -12272677(%ebp)   1  [ $v1       <char> %ebp-12272677 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12272668, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3068167, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12272676(%ebp)      # local array 'v0': 5 dimensions
    movl    $62,-12272672(%ebp)     #   dimension 1: 62 elements
    movl    $61,-12272668(%ebp)     #   dimension 2: 61 elements
    movl    $55,-12272664(%ebp)     #   dimension 3: 55 elements
    movl    $1,-12272660(%ebp)      #   dimension 4: 1 elements
    movl    $59,-12272656(%ebp)     #   dimension 5: 59 elements

    # function body
    leal    -12272676(%ebp), %eax   #   0:     &()    t4 <- v0
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   1:     param  1 <- t4
    pushl   %eax                   
    movl    $27894, %eax            #   2:     add    t5 <- 27894, 65405
    movl    $65405, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     sub    t6 <- t5, 329
    movl    $329, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   4:     add    t7 <- t6, 57429
    movl    $57429, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   5:     sub    t8 <- t7, 58845
    movl    $58845, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   6:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #   7:     call   f1
    addl    $8, %esp               
    call    ReadInt                 #   8:     call   t9 <- ReadInt
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   9:     add    t10 <- t9, 2627
    movl    $2627, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     sub    t11 <- t10, 65721
    movl    $65721, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 53085
    movl    $53085, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t13 <- t12, 11159
    movl    $11159, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     sub    t14 <- t13, 22256
    movl    $22256, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t15 <- t14, 34793
    movl    $34793, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     return t15
    jmp     l_f2_exit              
    movl    $98, %eax               #  16:     assign v1 <- 98
    movb    %al, -12272677(%ebp)   

l_f2_exit:
    # epilogue
    addl    $12272668, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    movl    $0, %eax                #   2:     if     0 # 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $97, %eax               #   8:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   9:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_9                #  10:     goto   9
    jmp     l_test_9                #  11:     goto   9
    jmp     l_test_9                #  12:     goto   9
    jmp     l_test_9                #  13:     goto   9
    jmp     l_test_10               #  14:     goto   10
l_test_9:
    movl    $1, %eax                #  16:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  17:     goto   11
l_test_10:
    movl    $0, %eax                #  19:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  21:     assign v0 <- t1
    movb    %al, v0                
    call    dummyBOOLfunc           #  22:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  23:     if     t2 = 1 goto 21_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  24:     goto   22_if_false
l_test_21_if_true:
    call    WriteLn                 #  26:     call   WriteLn
    movl    $61068, %eax            #  27:     if     61068 >= 99091 goto 25_if_true
    movl    $99091, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_25_if_true      
    jmp     l_test_26_if_false      #  28:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  30:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_20               #  33:     goto   20
l_test_22_if_false:
l_test_20:
l_test_29_while_cond:
    call    dummyCHARfunc           #  37:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $99, %eax               #  38:     if     99 >= t3 goto 30_while_body
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_30_while_body   
    jmp     l_test_28               #  39:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  41:     goto   29_while_cond
l_test_28:

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
