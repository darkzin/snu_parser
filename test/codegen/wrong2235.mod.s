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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    movl    $98463, %eax            #   0:     if     98463 >= 46851 goto 4_if_true
    movl    $46851, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_if_false:
l_f0_3:
    movl    $2995, %eax             #   6:     assign v3 <- 2995
    movl    %eax, -24(%ebp)        
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_f0_0                  #   8:     goto   0
l_f0_0:
l_f0_10_while_cond:
    jmp     l_f0_11_while_body      #  11:     goto   11_while_body
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_while_body:
    call    ReadInt                 #  14:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_10_while_cond      #  15:     goto   10_while_cond
l_f0_9:
    call    dummyCHARfunc           #  17:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 82 of <array 27 of <array 67 of <array 96 of <array 40 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 20 of <array 16 of <array 68 of <array 50 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movl    $99857, %eax            #   1:     if     99857 >= 40927 goto 2_while_body
    movl    $40927, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   5:     goto   4
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    movl    $98, %eax               #   8:     assign v3 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $98, %eax               #  11:     if     98 >= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  14:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_1_while_cond       #  16:     goto   1_while_cond
l_f1_0:
l_f1_14_while_cond:
    jmp     l_f1_15_while_body      #  19:     goto   15_while_body
    jmp     l_f1_13                 #  20:     goto   13
l_f1_15_while_body:
    movl    $49960, %eax            #  22:     if     49960 < 11803 goto 19_if_true
    movl    $11803, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  23:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_18                 #  25:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_exit              
    jmp     l_f1_14_while_cond      #  29:     goto   14_while_cond
l_f1_13:
    call    dummyCHARfunc           #  31:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  32:     assign v3 <- t1
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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 72 of <array 99 of <array 43 of <array 18 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 16 of <array 54 of <array 34 of <array 53 of <int>>>>>>> %ebp+12 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $21130, %eax            #   0:     sub    t1 <- 21130, 46535
    movl    $46535, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 66404
    movl    $66404, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 46911
    movl    $46911, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t4 <- t3, 7179
    movl    $7179, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t4
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $24051, %eax            #   6:     div    t5 <- 24051, 56098
    movl    $56098, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $61783, %eax            #   7:     if     61783 < t5 goto 3_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_while_body:
    movl    $19074, %eax            #  10:     return 19074
    jmp     l_f2_exit              
    movl    $0, %eax                #  11:     assign v2 <- 0
    movb    %al, -33(%ebp)         
    jmp     l_f2_2_while_cond       #  12:     goto   2_while_cond
l_f2_1:
    movl    $25443, %eax            #  14:     if     25443 = 36946 goto 8_if_true
    movl    $36946, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  15:     goto   9_if_false
l_f2_8_if_true:
l_f2_12_while_cond:
    movl    $2323, %eax             #  18:     if     2323 <= 59130 goto 13_while_body
    movl    $59130, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_13_while_body     
    jmp     l_f2_11                 #  19:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  21:     goto   12_while_cond
l_f2_11:
l_f2_16_while_cond:
    jmp     l_f2_15                 #  24:     goto   15
    jmp     l_f2_16_while_cond      #  25:     goto   16_while_cond
l_f2_15:
l_f2_19_while_cond:
    jmp     l_f2_18                 #  28:     goto   18
    jmp     l_f2_19_while_cond      #  29:     goto   19_while_cond
l_f2_18:
    movl    $0, %eax                #  31:     if     0 # 1 goto 22_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  32:     goto   23_if_false
l_f2_22_if_true:
    jmp     l_f2_21                 #  34:     goto   21
l_f2_23_if_false:
l_f2_21:
    movl    $11339, %eax            #  37:     return 11339
    jmp     l_f2_exit              
    jmp     l_f2_7                  #  38:     goto   7
l_f2_9_if_false:
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    call    dummyProcedure          #   6:     call   dummyProcedure
    jmp     l_test_exit            
l_test_8_while_cond:
    movl    $98, %eax               #   9:     if     98 > 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_9_while_body    
    jmp     l_test_7                #  10:     goto   7
l_test_9_while_body:
    jmp     l_test_exit            
    jmp     l_test_8_while_cond     #  13:     goto   8_while_cond
l_test_7:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
