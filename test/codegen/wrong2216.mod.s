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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 58 of <array 5 of <array 84 of <array 54 of <array 60 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    movl    $71269, %eax            #   2:     if     71269 = 4733 goto 5_if_true
    movl    $4733, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   3:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
    jmp     l_f0_8                  #   9:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  14:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  15:     if     98 <= 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  16:     goto   14_if_false
l_f0_13_if_true:
    call    dummyProcedure          #  18:     call   dummyProcedure
l_f0_18_while_cond:
    jmp     l_f0_17                 #  20:     goto   17
    jmp     l_f0_18_while_cond      #  21:     goto   18_while_cond
l_f0_17:
    movl    $98, %eax               #  23:     if     98 <= 97 goto 21_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  24:     goto   22_if_false
l_f0_21_if_true:
    jmp     l_f0_20                 #  26:     goto   20
l_f0_22_if_false:
l_f0_20:
    movl    $2119, %eax             #  29:     sub    t3 <- 2119, 98443
    movl    $98443, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  31:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_12                 #  32:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_2_if_true          #   2:     goto   2_if_true
    jmp     l_f1_2_if_true          #   3:     goto   2_if_true
    jmp     l_f1_2_if_true          #   4:     goto   2_if_true
    jmp     l_f1_3_if_false         #   5:     goto   3_if_false
l_f1_2_if_true:
    movl    $19054, %eax            #   7:     assign v0 <- 19054
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $45565, %eax            #  11:     assign v0 <- 45565
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 58 of <array 5 of <array 84 of <array 54 of <array 60 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $v0       <bool> %ebp-20 ]
    #   -78926444(%ebp)  78926424  [ $v1       <array 58 of <array 5 of <array 84 of <array 54 of <array 60 of <char>>>>>> %ebp-78926444 ]
    #   -78926448(%ebp)   4  [ $v2       <int> %ebp-78926448 ]
    #   -78926449(%ebp)   1  [ $v3       <char> %ebp-78926449 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $78926440, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19731610, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-78926444(%ebp)      # local array 'v1': 5 dimensions
    movl    $58,-78926440(%ebp)     #   dimension 1: 58 elements
    movl    $5,-78926436(%ebp)      #   dimension 2: 5 elements
    movl    $84,-78926432(%ebp)     #   dimension 3: 84 elements
    movl    $54,-78926428(%ebp)     #   dimension 4: 54 elements
    movl    $60,-78926424(%ebp)     #   dimension 5: 60 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_6                  #   5:     goto   6
    leal    -78926444(%ebp), %eax   #   6:     &()    t2 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  1 <- t2
    pushl   %eax                   
    jmp     l_f2_10                 #   8:     goto   10
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_11                 #  10:     goto   11
l_f2_10:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_11:
    movzbl  -17(%ebp), %eax         #  14:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  15:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  16:     if     t4 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #  17:     goto   6
l_f2_5:
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_7                  #  20:     goto   7
l_f2_6:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -19(%ebp)         
l_f2_7:
    movzbl  -19(%ebp), %eax         #  24:     assign v0 <- t5
    movb    %al, -20(%ebp)         
    movl    $29740, %eax            #  25:     if     29740 <= 38803 goto 14_if_true
    movl    $38803, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  26:     goto   15_if_false
l_f2_14_if_true:
    call    WriteLn                 #  28:     call   WriteLn
    movl    $3446, %eax             #  29:     assign v2 <- 3446
    movl    %eax, -78926448(%ebp)  
    movl    $13959, %eax            #  30:     assign v2 <- 13959
    movl    %eax, -78926448(%ebp)  
l_f2_21_while_cond:
    movl    $54480, %eax            #  32:     if     54480 > 90966 goto 22_while_body
    movl    $90966, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_22_while_body     
    jmp     l_f2_20                 #  33:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  35:     goto   21_while_cond
l_f2_20:
    movl    $97, %eax               #  37:     assign v3 <- 97
    movb    %al, -78926449(%ebp)   
    jmp     l_f2_13                 #  38:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $78926440, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    call    f1                      #   2:     call   t0 <- f1
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_0:
    movl    $1, %eax                #   5:     assign v0 <- 1
    movb    %al, v0                
    call    ReadInt                 #   6:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
