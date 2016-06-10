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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 62 of <array 20 of <array 2 of <array 34 of <array 95 of <bool>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 >= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $98, %eax               #   5:     return 98
    jmp     l_f0_exit              
    movl    $2486, %eax             #   6:     if     2486 < 9885 goto 6_if_true
    movl    $9885, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   7:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #  14:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    WriteLn                 #  15:     call   WriteLn
    movl    $98, %eax               #  16:     if     98 > 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  17:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  19:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_18                 #  22:     goto   18
l_f0_18:
    jmp     l_f0_21                 #  24:     goto   21
l_f0_21:
    jmp     l_f0_9                  #  26:     goto   9
l_f0_9:
l_f0_25_while_cond:
    movl    $68678, %eax            #  29:     if     68678 >= 58167 goto 26_while_body
    movl    $58167, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_26_while_body     
    jmp     l_f0_24                 #  30:     goto   24
l_f0_26_while_body:
    movl    $55728, %eax            #  32:     if     55728 <= 66893 goto 29_if_true
    movl    $66893, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_29_if_true        
    jmp     l_f0_30_if_false        #  33:     goto   30_if_false
l_f0_29_if_true:
    jmp     l_f0_28                 #  35:     goto   28
l_f0_30_if_false:
l_f0_28:
    movl    $1, %eax                #  38:     assign v1 <- 1
    movb    %al, -21(%ebp)         
    movl    $82403, %eax            #  39:     if     82403 < 203 goto 34_if_true
    movl    $203, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_34_if_true        
    jmp     l_f0_35_if_false        #  40:     goto   35_if_false
l_f0_34_if_true:
    jmp     l_f0_33                 #  42:     goto   33
l_f0_35_if_false:
l_f0_33:
    jmp     l_f0_25_while_cond      #  45:     goto   25_while_cond
l_f0_24:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <ptr(4) to <array 62 of <array 20 of <array 2 of <array 34 of <array 95 of <bool>>>>>>> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 49 of <array 66 of <array 86 of <array 19 of <array 28 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 99 of <array 8 of <array 80 of <array 88 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 27 of <array 65 of <array 69 of <array 19 of <array 73 of <bool>>>>>>> %ebp+20 ]
    #    -41(%ebp)   1  [ $v4       <char> %ebp-41 ]
    #   -8010468(%ebp)  8010424  [ $v5       <array 62 of <array 20 of <array 2 of <array 34 of <array 95 of <bool>>>>>> %ebp-8010468 ]
    #   -8010472(%ebp)   4  [ $v6       <int> %ebp-8010472 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8010460, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2002615, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-8010468(%ebp)       # local array 'v5': 5 dimensions
    movl    $62,-8010464(%ebp)      #   dimension 1: 62 elements
    movl    $20,-8010460(%ebp)      #   dimension 2: 20 elements
    movl    $2,-8010456(%ebp)       #   dimension 3: 2 elements
    movl    $34,-8010452(%ebp)      #   dimension 4: 34 elements
    movl    $95,-8010448(%ebp)      #   dimension 5: 95 elements

    # function body
    movl    $25129, %eax            #   0:     div    t4 <- 25129, 74963
    movl    $74963, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t5 <- t4, 16058
    movl    $16058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t6 <- t5, 82433
    movl    $82433, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t7 <- t6, 27090
    movl    $27090, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $65602, %eax            #   4:     if     65602 < t7 goto 1
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   5:     goto   2
l_f1_1:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_3                  #   8:     goto   3
l_f1_2:
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f1_3:
    movzbl  -33(%ebp), %eax         #  12:     assign v2 <- t8
    movb    %al, 16(%ebp)          
    leal    -8010468(%ebp), %eax    #  13:     &()    t9 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  15:     call   t10 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  16:     assign v4 <- t10
    movb    %al, -41(%ebp)         
    jmp     l_f1_8_if_false         #  17:     goto   8_if_false
    movl    $96564, %eax            #  18:     assign v6 <- 96564
    movl    %eax, -8010472(%ebp)   
    call    dummyProcedure          #  19:     call   dummyProcedure
l_f1_12_while_cond:
    movl    $99, %eax               #  21:     if     99 < 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  22:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  24:     goto   12_while_cond
l_f1_11:
l_f1_16_while_cond:
    jmp     l_f1_16_while_cond      #  27:     goto   16_while_cond
    movl    $97, %eax               #  28:     assign v4 <- 97
    movb    %al, -41(%ebp)         
l_f1_20_while_cond:
    movl    $98, %eax               #  30:     if     98 # 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_21_while_body     
    jmp     l_f1_19                 #  31:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  33:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_6                  #  35:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $8010460, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]

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
    movl    $84951, %eax            #   0:     sub    t4 <- 84951, 54615
    movl    $54615, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 21071
    movl    $21071, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t6 <- t5, 3804
    movl    $3804, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t6
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $43530, %eax            #   5:     div    t7 <- 43530, 84466
    movl    $84466, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $58737, %eax            #   6:     if     58737 > t7 goto 3_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    movl    $14540, %eax            #   9:     return 14540
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
l_f2_7_while_cond:
    movl    $83649, %eax            #  13:     if     83649 <= 76713 goto 8_while_body
    movl    $76713, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_while_body:
    call    dummyBOOLfunc           #  16:     call   t8 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f2_7_while_cond       #  17:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    movl    $61345, %eax            #   0:     div    t0 <- 61345, 98932
    movl    $98932, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 66269
    movl    $66269, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 36597
    movl    $36597, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t2
    movl    %eax, v0               
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_exit            

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

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
