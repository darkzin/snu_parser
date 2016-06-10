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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 34 of <array 65 of <array 69 of <array 99 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -41(%ebp)   1  [ $v1       <bool> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $85221, %eax            #   1:     mul    t1 <- 85221, 76100
    movl    $76100, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t2 <- t1, 35029
    movl    $35029, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t3 <- t2, 85203
    movl    $85203, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $34368, %eax            #   4:     sub    t4 <- 34368, 8852
    movl    $8852, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t5 <- t4, 87307
    movl    $87307, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #   6:     if     t3 <= t5 goto 2_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   7:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #  11:     call   t6 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     add    t7 <- t6, 31996
    movl    $31996, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     return t7
    jmp     l_f0_exit              
    movl    $1, %eax                #  14:     assign v1 <- 1
    movb    %al, -41(%ebp)         

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 33 of <array 19 of <array 74 of <array 100 of <array 16 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 90 of <array 58 of <array 3 of <array 75 of <array 35 of <char>>>>>>> %ebp+20 ]

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
l_f1_4_while_cond:
    movl    $36149, %eax            #   1:     if     36149 # 39902 goto 5_while_body
    movl    $39902, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_5_while_body      
    jmp     l_f1_3                  #   2:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   4:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_7                  #   6:     goto   7
l_f1_7:
    movl    $0, %eax                #   8:     if     0 # 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #   9:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  11:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $97, %eax               #  14:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  15:     goto   0
l_f1_0:
    call    dummyCHARfunc           #  17:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  18:     return t1
    jmp     l_f1_exit              
l_f1_17_while_cond:
    call    dummyCHARfunc           #  20:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  21:     if     97 = t2 goto 18_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_18_while_body     
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  24:     goto   17_while_cond
l_f1_16:

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 90 of <array 58 of <array 3 of <array 75 of <array 35 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 33 of <array 19 of <array 74 of <array 100 of <array 16 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 90 of <array 58 of <array 3 of <array 75 of <array 35 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 33 of <array 19 of <array 74 of <array 100 of <array 16 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -296947260(%ebp)  296947224  [ $v2       <array 33 of <array 19 of <array 74 of <array 100 of <array 16 of <int>>>>>> %ebp-296947260 ]
    #   -338054784(%ebp)  41107524  [ $v3       <array 90 of <array 58 of <array 3 of <array 75 of <array 35 of <char>>>>>> %ebp-338054784 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $338054772, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $84513693, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-296947260(%ebp)     # local array 'v2': 5 dimensions
    movl    $33,-296947256(%ebp)    #   dimension 1: 33 elements
    movl    $19,-296947252(%ebp)    #   dimension 2: 19 elements
    movl    $74,-296947248(%ebp)    #   dimension 3: 74 elements
    movl    $100,-296947244(%ebp)   #   dimension 4: 100 elements
    movl    $16,-296947240(%ebp)    #   dimension 5: 16 elements
    movl    $5,-338054784(%ebp)     # local array 'v3': 5 dimensions
    movl    $90,-338054780(%ebp)    #   dimension 1: 90 elements
    movl    $58,-338054776(%ebp)    #   dimension 2: 58 elements
    movl    $3,-338054772(%ebp)     #   dimension 3: 3 elements
    movl    $75,-338054768(%ebp)    #   dimension 4: 75 elements
    movl    $35,-338054764(%ebp)    #   dimension 5: 35 elements

    # function body
l_f2_4_while_cond:
    movl    $27857, %eax            #   1:     if     27857 < 32181 goto 5_while_body
    movl    $32181, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_5_while_body      
    jmp     l_f2_3                  #   2:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   4:     goto   4_while_cond
l_f2_3:
l_f2_8_while_cond:
    movl    $98, %eax               #   7:     if     98 > 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_9_while_body      
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  10:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_0                  #  12:     goto   0
l_f2_0:
l_f2_12_while_cond:
    movl    $98, %eax               #  15:     if     98 <= 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_13_while_body     
    jmp     l_f2_11                 #  16:     goto   11
l_f2_13_while_body:
    leal    -338054784(%ebp), %eax  #  18:     &()    t1 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     param  3 <- t1
    pushl   %eax                   
    movl    $59401, %eax            #  20:     param  2 <- 59401
    pushl   %eax                   
    movl    $46796, %eax            #  21:     param  1 <- 46796
    pushl   %eax                   
    leal    -296947260(%ebp), %eax  #  22:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  24:     call   t3 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  25:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_12_while_cond      #  26:     goto   12_while_cond
l_f2_11:
    leal    -338054784(%ebp), %eax  #  28:     &()    t4 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  3 <- t4
    pushl   %eax                   
    movl    $86226, %eax            #  30:     param  2 <- 86226
    pushl   %eax                   
    movl    $35246, %eax            #  31:     param  1 <- 35246
    pushl   %eax                   
    leal    -296947260(%ebp), %eax  #  32:     &()    t5 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  34:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  35:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $338054772, %esp        # remove locals
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
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_test_exit            
    movl    $29543, %eax            #   2:     if     29543 >= 2612 goto 3
    movl    $2612, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_3               
    jmp     l_test_4                #   3:     goto   4
l_test_3:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_5:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
    call    dummyProcedure          #  11:     call   dummyProcedure

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
