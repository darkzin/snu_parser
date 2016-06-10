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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 92 of <array 19 of <array 44 of <array 49 of <array 66 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 79 of <array 6 of <array 70 of <array 60 of <array 83 of <bool>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    movl    $97, %eax               #   0:     if     97 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $63301, %eax            #   3:     return 63301
    jmp     l_f0_exit              
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $41739, %eax            #  11:     assign v3 <- 41739
    movl    %eax, -28(%ebp)        
    movl    $71407, %eax            #  12:     div    t4 <- 71407, 43060
    movl    $43060, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     mul    t5 <- t4, 85759
    movl    $85759, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $23212, %eax            #  14:     add    t6 <- 23212, t5
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     return t6
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 29 of <array 60 of <array 46 of <array 81 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 4 of <array 42 of <array 8 of <array 17 of <char>>>>>>> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 15802
    movl    $15802, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 60194
    movl    $60194, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t7 <- t6, 2954
    movl    $2954, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t7
    jmp     l_f1_exit              
    call    dummyINTfunc            #   5:     call   t8 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t8
    jmp     l_f1_exit              
l_f1_3_while_cond:
    call    dummyCHARfunc           #   8:     call   t9 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   9:     if     t9 < 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_4_while_body      
    jmp     l_f1_2                  #  10:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  12:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 79 of <array 6 of <array 70 of <array 60 of <array 83 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <ptr(4) to <array 92 of <array 19 of <array 44 of <array 49 of <array 66 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $v0       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $v1       <char> %ebp-41 ]
    #   -248733476(%ebp)  248733432  [ $v2       <array 92 of <array 19 of <array 44 of <array 49 of <array 66 of <bool>>>>>> %ebp-248733476 ]
    #   -413969900(%ebp)  165236424  [ $v3       <array 79 of <array 6 of <array 70 of <array 60 of <array 83 of <bool>>>>>> %ebp-413969900 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $413969888, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $103492472, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-248733476(%ebp)     # local array 'v2': 5 dimensions
    movl    $92,-248733472(%ebp)    #   dimension 1: 92 elements
    movl    $19,-248733468(%ebp)    #   dimension 2: 19 elements
    movl    $44,-248733464(%ebp)    #   dimension 3: 44 elements
    movl    $49,-248733460(%ebp)    #   dimension 4: 49 elements
    movl    $66,-248733456(%ebp)    #   dimension 5: 66 elements
    movl    $5,-413969900(%ebp)     # local array 'v3': 5 dimensions
    movl    $79,-413969896(%ebp)    #   dimension 1: 79 elements
    movl    $6,-413969892(%ebp)     #   dimension 2: 6 elements
    movl    $70,-413969888(%ebp)    #   dimension 3: 70 elements
    movl    $60,-413969884(%ebp)    #   dimension 4: 60 elements
    movl    $83,-413969880(%ebp)    #   dimension 5: 83 elements

    # function body
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t4
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $100, %eax              #   3:     if     100 >= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $44074, %eax            #   6:     if     44074 < 60853 goto 6_if_true
    movl    $60853, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   7:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_11_if_false        #  12:     goto   11_if_false
    jmp     l_f2_9                  #  13:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  17:     goto   12
    jmp     l_f2_13_while_cond      #  18:     goto   13_while_cond
l_f2_12:
    call    WriteLn                 #  20:     call   WriteLn
    movl    $38510, %eax            #  21:     assign v0 <- 38510
    movl    %eax, -40(%ebp)        
    movl    $97, %eax               #  22:     assign v1 <- 97
    movb    %al, -41(%ebp)         
    call    dummyCHARfunc           #  23:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_2_while_cond       #  24:     goto   2_while_cond
l_f2_1:
    movl    $59062, %eax            #  26:     if     59062 >= 89274 goto 20_if_true
    movl    $89274, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  27:     goto   21_if_false
l_f2_20_if_true:
    movl    $98, %eax               #  29:     if     98 = 97 goto 24_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  30:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  32:     goto   23
l_f2_25_if_false:
l_f2_23:
l_f2_28_while_cond:
    movl    $35069, %eax            #  36:     if     35069 # 53443 goto 29_while_body
    movl    $53443, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_29_while_body     
    jmp     l_f2_27                 #  37:     goto   27
l_f2_29_while_body:
    jmp     l_f2_28_while_cond      #  39:     goto   28_while_cond
l_f2_27:
    movl    $26319, %eax            #  41:     if     26319 <= 35112 goto 32_if_true
    movl    $35112, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_32_if_true        
    jmp     l_f2_33_if_false        #  42:     goto   33_if_false
l_f2_32_if_true:
    jmp     l_f2_31                 #  44:     goto   31
l_f2_33_if_false:
l_f2_31:
    leal    -413969900(%ebp), %eax  #  47:     &()    t6 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  48:     param  2 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  49:     if     97 < 100 goto 36
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_36                
    jmp     l_f2_37                 #  50:     goto   37
l_f2_36:
    movl    $1, %eax                #  52:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_38                 #  53:     goto   38
l_f2_37:
    movl    $0, %eax                #  55:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f2_38:
    movzbl  -25(%ebp), %eax         #  57:     param  1 <- t7
    pushl   %eax                   
    leal    -248733476(%ebp), %eax  #  58:     &()    t8 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  59:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  60:     call   t9 <- f0
    addl    $12, %esp              
    movl    %eax, -36(%ebp)        
    movl    $64509, %eax            #  61:     return 64509
    jmp     l_f2_exit              
    jmp     l_f2_19                 #  62:     goto   19
l_f2_21_if_false:
l_f2_19:

l_f2_exit:
    # epilogue
    addl    $413969888, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $87721, %eax            #   3:     sub    t1 <- 87721, 39974
    movl    $39974, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $6764, %eax             #   4:     if     6764 = t1 goto 3_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #   5:     goto   4_if_false
l_test_3_if_true:
    call    dummyBOOLfunc           #   7:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:
    call    f2                      #  11:     call   t3 <- f2
    movl    %eax, -28(%ebp)        
    call    dummyProcedure          #  12:     call   dummyProcedure

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
