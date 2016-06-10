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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $97534, %eax            #   4:     return 97534
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $54453, %eax            #   7:     div    t1 <- 54453, 6352
    movl    $6352, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     return t1
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 90 of <array 44 of <array 83 of <array 72 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 72 of <array 63 of <array 14 of <array 17 of <array 16 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $90041, %eax            #   1:     div    t1 <- 90041, 42046
    movl    $42046, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t2 <- t1, 53380
    movl    $53380, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t3 <- t2, 21526
    movl    $21526, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t4 <- t3, 59643
    movl    $59643, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     if     t4 < 64356 goto 2_while_body
    movl    $64356, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    call    dummyBOOLfunc           #   8:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  13:     call   t7 <- f0
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    $25801, %eax            #  14:     sub    t8 <- 25801, 40353
    movl    $40353, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  16:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 72 of <array 63 of <array 14 of <array 17 of <array 16 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 11 of <array 90 of <array 44 of <array 83 of <array 72 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #   -1041258292(%ebp)  1041258264  [ $v0       <array 11 of <array 90 of <array 44 of <array 83 of <array 72 of <int>>>>>> %ebp-1041258292 ]
    #   -1110350668(%ebp)  69092376  [ $v1       <array 72 of <array 63 of <array 14 of <array 17 of <array 16 of <int>>>>>> %ebp-1110350668 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1110350656, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $277587664, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1041258292(%ebp)    # local array 'v0': 5 dimensions
    movl    $11,-1041258288(%ebp)   #   dimension 1: 11 elements
    movl    $90,-1041258284(%ebp)   #   dimension 2: 90 elements
    movl    $44,-1041258280(%ebp)   #   dimension 3: 44 elements
    movl    $83,-1041258276(%ebp)   #   dimension 4: 83 elements
    movl    $72,-1041258272(%ebp)   #   dimension 5: 72 elements
    movl    $5,-1110350668(%ebp)    # local array 'v1': 5 dimensions
    movl    $72,-1110350664(%ebp)   #   dimension 1: 72 elements
    movl    $63,-1110350660(%ebp)   #   dimension 2: 63 elements
    movl    $14,-1110350656(%ebp)   #   dimension 3: 14 elements
    movl    $17,-1110350652(%ebp)   #   dimension 4: 17 elements
    movl    $16,-1110350648(%ebp)   #   dimension 5: 16 elements

    # function body
l_f2_1_while_cond:
    leal    -1110350668(%ebp), %eax #   1:     &()    t1 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t1
    pushl   %eax                   
    leal    -1041258292(%ebp), %eax #   3:     &()    t2 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t2
    pushl   %eax                   
    movl    $98, %eax               #   5:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #   6:     call   t3 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    movl    $18796, %eax            #   7:     if     18796 = t3 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_while_body:
    jmp     l_f2_6_if_false         #  10:     goto   6_if_false
    jmp     l_f2_4                  #  11:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
l_f2_8_while_cond:
    movl    $97, %eax               #  17:     if     97 >= 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_9_while_body      
    jmp     l_f2_7                  #  18:     goto   7
l_f2_9_while_body:
l_f2_12_while_cond:
    movl    $97, %eax               #  21:     if     97 >= 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13_while_body     
    jmp     l_f2_11                 #  22:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  24:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_8_while_cond       #  26:     goto   8_while_cond
l_f2_7:
    call    dummyCHARfunc           #  28:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  29:     if     t4 <= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  30:     goto   17_if_false
l_f2_16_if_true:
    movl    $817, %eax              #  32:     param  0 <- 817
    pushl   %eax                   
    call    WriteInt                #  33:     call   WriteInt
    addl    $4, %esp               
l_f2_21_while_cond:
    jmp     l_f2_20                 #  35:     goto   20
    jmp     l_f2_21_while_cond      #  36:     goto   21_while_cond
l_f2_20:
    movl    $98, %eax               #  38:     if     98 >= 100 goto 24_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  39:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  41:     goto   23
l_f2_25_if_false:
l_f2_23:
    jmp     l_f2_exit              
    jmp     l_f2_30_if_false        #  45:     goto   30_if_false
    jmp     l_f2_28                 #  46:     goto   28
l_f2_30_if_false:
l_f2_28:
    jmp     l_f2_15                 #  49:     goto   15
l_f2_17_if_false:
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $1110350656, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    movl    $100, %eax              #   2:     if     100 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
    call    dummyCHARfunc           #   5:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
