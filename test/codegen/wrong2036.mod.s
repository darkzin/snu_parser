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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 55 of <array 39 of <array 56 of <array 81 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 52 of <array 15 of <array 71 of <array 94 of <array 30 of <char>>>>>>> %ebp+20 ]

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
    movl    $100, %eax              #   0:     if     100 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $99, %eax               #   3:     return 99
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6_while_cond       #   6:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #  11:     return 97
    jmp     l_f0_exit              
    call    dummyINTfunc            #  12:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 24 of <array 64 of <array 91 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $98, %eax               #   1:     if     98 # 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_4                  #   4:     goto   4
l_f1_4:
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   7:     goto   8_while_cond
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
l_f1_11_while_cond:
    jmp     l_f1_15_if_false        #  11:     goto   15_if_false
    jmp     l_f1_13                 #  12:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $62273, %eax            #  15:     if     62273 >= 22781 goto 17
    movl    $22781, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_17                
    jmp     l_f1_18                 #  16:     goto   18
l_f1_17:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_19                 #  19:     goto   19
l_f1_18:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_19:
    movzbl  -13(%ebp), %eax         #  23:     return t5
    jmp     l_f1_exit              
l_f1_22_while_cond:
    jmp     l_f1_21                 #  25:     goto   21
    jmp     l_f1_22_while_cond      #  26:     goto   22_while_cond
l_f1_21:
    jmp     l_f1_11_while_cond      #  28:     goto   11_while_cond
    call    dummyCHARfunc           #  29:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 52 of <array 15 of <array 71 of <array 94 of <array 30 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t16      <ptr(4) to <array 41 of <array 55 of <array 39 of <array 56 of <array 81 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t17      <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t18      <char> %ebp-42 ]
    #    -48(%ebp)   4  [ $t5       <ptr(4) to <array 35 of <array 24 of <array 64 of <array 91 of <array 9 of <char>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t6       <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -44029528(%ebp)  44029464  [ $v3       <array 35 of <array 24 of <array 64 of <array 91 of <array 9 of <char>>>>>> %ebp-44029528 ]
    #   -1639703632(%ebp)  1595674104  [ $v4       <array 41 of <array 55 of <array 39 of <array 56 of <array 81 of <int>>>>>> %ebp-1639703632 ]
    #   -1795875256(%ebp)  156171624  [ $v5       <array 52 of <array 15 of <array 71 of <array 94 of <array 30 of <char>>>>>> %ebp-1795875256 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1795875244, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $448968811, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-44029528(%ebp)      # local array 'v3': 5 dimensions
    movl    $35,-44029524(%ebp)     #   dimension 1: 35 elements
    movl    $24,-44029520(%ebp)     #   dimension 2: 24 elements
    movl    $64,-44029516(%ebp)     #   dimension 3: 64 elements
    movl    $91,-44029512(%ebp)     #   dimension 4: 91 elements
    movl    $9,-44029508(%ebp)      #   dimension 5: 9 elements
    movl    $5,-1639703632(%ebp)    # local array 'v4': 5 dimensions
    movl    $41,-1639703628(%ebp)   #   dimension 1: 41 elements
    movl    $55,-1639703624(%ebp)   #   dimension 2: 55 elements
    movl    $39,-1639703620(%ebp)   #   dimension 3: 39 elements
    movl    $56,-1639703616(%ebp)   #   dimension 4: 56 elements
    movl    $81,-1639703612(%ebp)   #   dimension 5: 81 elements
    movl    $5,-1795875256(%ebp)    # local array 'v5': 5 dimensions
    movl    $52,-1795875252(%ebp)   #   dimension 1: 52 elements
    movl    $15,-1795875248(%ebp)   #   dimension 2: 15 elements
    movl    $71,-1795875244(%ebp)   #   dimension 3: 71 elements
    movl    $94,-1795875240(%ebp)   #   dimension 4: 94 elements
    movl    $30,-1795875236(%ebp)   #   dimension 5: 30 elements

    # function body
    movl    $97, %eax               #   0:     param  2 <- 97
    pushl   %eax                   
    movl    $98, %eax               #   1:     param  1 <- 98
    pushl   %eax                   
    leal    -44029528(%ebp), %eax   #   2:     &()    t5 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   3:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   4:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -49(%ebp)         
    movl    $8659, %eax             #   5:     add    t7 <- 8659, 23440
    movl    $23440, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $68951, %eax            #   6:     div    t8 <- 68951, 87953
    movl    $87953, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   7:     div    t9 <- t8, 50774
    movl    $50774, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   8:     div    t10 <- t9, 78550
    movl    $78550, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     div    t11 <- t10, 816
    movl    $816, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     div    t12 <- t11, 43549
    movl    $43549, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -56(%ebp), %eax         #  11:     add    t13 <- t7, t12
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t13
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    leal    -1795875256(%ebp), %eax #  14:     &()    t14 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  3 <- t14
    pushl   %eax                   
    movl    $17651, %eax            #  16:     if     17651 <= 74857 goto 3
    movl    $74857, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_3                 
    jmp     l_f2_4                  #  17:     goto   4
l_f2_3:
    movl    $1, %eax                #  19:     assign t15 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_5                  #  20:     goto   5
l_f2_4:
    movl    $0, %eax                #  22:     assign t15 <- 0
    movb    %al, -33(%ebp)         
l_f2_5:
    movzbl  -33(%ebp), %eax         #  24:     param  2 <- t15
    pushl   %eax                   
    leal    -1639703632(%ebp), %eax #  25:     &()    t16 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     param  1 <- t16
    pushl   %eax                   
    jmp     l_f2_7                  #  27:     goto   7
    jmp     l_f2_7                  #  28:     goto   7
l_f2_7:
    movl    $1, %eax                #  30:     assign t17 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_9                  #  31:     goto   9
    movl    $0, %eax                #  32:     assign t17 <- 0
    movb    %al, -41(%ebp)         
l_f2_9:
    movzbl  -41(%ebp), %eax         #  34:     param  0 <- t17
    pushl   %eax                   
    call    f0                      #  35:     call   t18 <- f0
    addl    $16, %esp              
    movb    %al, -42(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1795875244, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $11426, %eax            #   3:     add    t0 <- 11426, 55590
    movl    $55590, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     sub    t1 <- t0, 25320
    movl    $25320, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $31832, %eax            #   5:     if     31832 >= t1 goto 6
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_6               
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_8:
    movzbl  -21(%ebp), %eax         #  13:     param  2 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  14:     param  1 <- 97
    pushl   %eax                   
    movl    $92118, %eax            #  15:     if     92118 <= 10168 goto 10
    movl    $10168, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10              
    jmp     l_test_11               #  16:     goto   11
l_test_10:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_12               #  19:     goto   12
l_test_11:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_12:
    movzbl  -22(%ebp), %eax         #  23:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  24:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -23(%ebp)         
    movl    $97, %eax               #  25:     if     97 < t4 goto 4_while_body
    movzbl  -23(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_4_while_body    
    jmp     l_test_2                #  26:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  28:     goto   3_while_cond
l_test_2:
    movl    $98, %eax               #  30:     if     98 > 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_15_if_true      
    jmp     l_test_16_if_false      #  31:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  33:     goto   14
l_test_16_if_false:
l_test_14:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
